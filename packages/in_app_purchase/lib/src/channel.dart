// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/services.dart';

const MethodChannel channel =
    MethodChannel('plugins.flutter.io/in_app_purchase');

const MethodChannel callbackChannel =
    MethodChannel('plugins.flutter.io/in_app_purchase_callback');
