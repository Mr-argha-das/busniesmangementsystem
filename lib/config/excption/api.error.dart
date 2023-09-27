import 'dart:developer';

class ApiError{
  static  showError({required String error, required String line, required String pageName}){
    log("/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////");
    log("Page Name: $pageName");
    log("Line number: $line");
    log("Api Error: $error");
    log("/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////");
  }
}