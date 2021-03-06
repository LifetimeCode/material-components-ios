# Copyright 2017-present The Material Components for iOS Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "//:material_components_ios.bzl",
    "mdc_examples_objc_library",
    "mdc_examples_swift_library",
    "mdc_objc_library",
    "mdc_public_objc_library",
    "mdc_unit_test_suite",
    "mdc_snapshot_objc_library",
    "mdc_snapshot_test",
)
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

licenses(["notice"])  # Apache 2.0

mdc_public_objc_library(
    name = "Ripple",
    sdk_frameworks = [
        "CoreGraphics",
        "QuartzCore",
        "UIKit",
    ],
    deps = [
        "//components/AnimationTiming",
        "//components/private/Math",
    ],
)

mdc_objc_library(
    name = "private",
    hdrs = native.glob(["src/private/*.h"]),
    includes = ["src/private"],
    visibility = ["//visibility:private"],
    deps = [":Ripple"],
)

mdc_examples_objc_library(
    name = "ObjcExamples",
    visibility = ["//visibility:private"],
    deps = [
        ":Ripple",
    ],
)

mdc_examples_swift_library(
    name = "SwiftExamples",
    visibility = ["//visibility:private"],
    deps = [
        ":Ripple",
        "//components/Buttons:ButtonThemer",
        "//components/Buttons:Theming",
        "//components/Cards:CardThemer",
        "//components/Cards:CardsPrivate",
        "//components/Cards:Theming",
    ],
)

mdc_objc_library(
    name = "unit_test_sources",
    testonly = 1,
    srcs = glob(["tests/unit/*.m"]),
    hdrs = glob(["tests/unit/*.h"]),
    sdk_frameworks = [
        "UIKit",
        "XCTest",
    ],
    visibility = ["//visibility:private"],
    deps = [
        ":Ripple",
        ":private",
    ],
)

mdc_unit_test_suite(
    name = "unit_tests",
    deps = [
        ":unit_test_sources",
    ],
)

mdc_snapshot_objc_library(
    name = "snapshot_test_lib",
    deps = [":Ripple"],
)

mdc_snapshot_test(
    name = "snapshot_tests",
    deps = [":snapshot_test_lib"],
)
