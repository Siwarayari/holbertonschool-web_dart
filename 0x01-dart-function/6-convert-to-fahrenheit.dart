List<double> convertToF(List<double> temperaturesInC){
    List<double> cen = [];
    for (var f in temperaturesInC) {
    double c = double.parse((f * 9 / 5 + 32).toStringAsFixed(2));
    cen.add(c);
}
    return cen;
}
