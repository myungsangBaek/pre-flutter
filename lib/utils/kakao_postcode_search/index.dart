// import 'package:daum_postcode_search/daum_postcode_search.dart';
import 'package:flutter/material.dart';
import './searching_page.dart' as SearchingView;
import 'dart:js' as js;

class KakaoPostcodeSearch extends StatefulWidget {
  KakaoPostcodeSearch({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _KakaoPostcodeSearchState createState() =>
      _KakaoPostcodeSearchState();
}

class _KakaoPostcodeSearchState extends State<KakaoPostcodeSearch> {
  // DataModel? _daumPostcodeSearchDataModel;

  String? addressName;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TableRow _buildTableRow(String label, String value) {
      return TableRow(
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Text(label, textAlign: TextAlign.center),
          ),
          TableCell(
            child: Text(value, textAlign: TextAlign.center),
          ),
        ],
      );
    }

    return Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(
                        name: '/search_address'
                      ),
                      builder: (BuildContext context) => SearchingView.SearchingView()
                    )
                  );

                  js.JsObject obj = js.JsObject.fromBrowserObject(js.context['add']);
                  
                  setState(() {
                    this.addressName = obj['data'].toString();
                  });
                },
                icon: Icon(Icons.search),
                label: Text("주소 검색"),
              ),
              Visibility(
                // visible: _daumPostcodeSearchDataModel != null,
                visible: false,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RichText(
                            text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.check_circle,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                TextSpan(text: "주소 검색 결과"),
                              ],
                            ),
                          ),
                        ),
                        Table(
                          border: TableBorder.symmetric(
                              inside: BorderSide(color: Colors.grey)),
                          columnWidths: {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(2),
                          },
                          children: [
                            // _buildTableRow(
                            //   "한글주소",
                            //   _daumPostcodeSearchDataModel?.address ?? "",
                            // ),
                            // _buildTableRow(
                            //   "영문주소",
                            //   _daumPostcodeSearchDataModel?.addressEnglish ??
                            //       "",
                            // ),
                            // _buildTableRow(
                            //   "우편번호",
                            //   _daumPostcodeSearchDataModel?.zonecode ?? "",
                            // ),
                            // _buildTableRow(
                            //   "지번주소",
                            //   _daumPostcodeSearchDataModel?.autoJibunAddress ??
                            //       "",
                            // ),
                            // _buildTableRow(
                            //   "지번주소(영문)",
                            //   _daumPostcodeSearchDataModel
                            //           ?.autoJibunAddressEnglish ??
                            //       "",
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
