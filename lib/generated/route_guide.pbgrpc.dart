///
//  Generated code. Do not modify.
//  source: route_guide.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'route_guide.pb.dart';
export 'route_guide.pb.dart';

class RouteGuideClient extends Client {
  static final _$getFeature = new ClientMethod<Point, Feature>(
      '/RouteGuide/GetFeature',
      (Point value) => value.writeToBuffer(),
      (List<int> value) => new Feature.fromBuffer(value));
  static final _$listFeatures = new ClientMethod<Rectangle, Feature>(
      '/RouteGuide/ListFeatures',
      (Rectangle value) => value.writeToBuffer(),
      (List<int> value) => new Feature.fromBuffer(value));
  static final _$recordRoute = new ClientMethod<Point, RouteSummary>(
      '/RouteGuide/RecordRoute',
      (Point value) => value.writeToBuffer(),
      (List<int> value) => new RouteSummary.fromBuffer(value));
  static final _$routeChat = new ClientMethod<RouteNote, RouteNote>(
      '/RouteGuide/RouteChat',
      (RouteNote value) => value.writeToBuffer(),
      (List<int> value) => new RouteNote.fromBuffer(value));

  RouteGuideClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<Feature> getFeature(Point request, {CallOptions options}) {
    final call = $createCall(
        _$getFeature, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<Feature> listFeatures(Rectangle request,
      {CallOptions options}) {
    final call = $createCall(
        _$listFeatures, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseFuture<RouteSummary> recordRoute($async.Stream<Point> request,
      {CallOptions options}) {
    final call = $createCall(_$recordRoute, request, options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<RouteNote> routeChat($async.Stream<RouteNote> request,
      {CallOptions options}) {
    final call = $createCall(_$routeChat, request, options: options);
    return new ResponseStream(call);
  }
}

abstract class RouteGuideServiceBase extends Service {
  String get $name => 'RouteGuide';

  RouteGuideServiceBase() {
    $addMethod(new ServiceMethod<Point, Feature>(
        'GetFeature',
        getFeature_Pre,
        false,
        false,
        (List<int> value) => new Point.fromBuffer(value),
        (Feature value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Rectangle, Feature>(
        'ListFeatures',
        listFeatures_Pre,
        false,
        true,
        (List<int> value) => new Rectangle.fromBuffer(value),
        (Feature value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Point, RouteSummary>(
        'RecordRoute',
        recordRoute,
        true,
        false,
        (List<int> value) => new Point.fromBuffer(value),
        (RouteSummary value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<RouteNote, RouteNote>(
        'RouteChat',
        routeChat,
        true,
        true,
        (List<int> value) => new RouteNote.fromBuffer(value),
        (RouteNote value) => value.writeToBuffer()));
  }

  $async.Future<Feature> getFeature_Pre(
      ServiceCall call, $async.Future request) async {
    return getFeature(call, await request);
  }

  $async.Stream<Feature> listFeatures_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* listFeatures(call, (await request) as Rectangle);
  }

  $async.Future<Feature> getFeature(ServiceCall call, Point request);
  $async.Stream<Feature> listFeatures(ServiceCall call, Rectangle request);
  $async.Future<RouteSummary> recordRoute(
      ServiceCall call, $async.Stream<Point> request);
  $async.Stream<RouteNote> routeChat(
      ServiceCall call, $async.Stream<RouteNote> request);
}
