// Copyright (c) 2013, Iván Zaera Avellón - izaera@gmail.com
// Use of this source code is governed by a LGPL v3 license.
// See the LICENSE file for more information.

library cipher.test.digests.ripemd128_test;

import "package:cipher/cipher.dart";
import "package:cipher/impl/base.dart";

import "../test/digest_tests.dart";

/// NOTE: the expected results for these tests are computed using the Java version of Bouncy Castle.
void main() {

  initCipher();

  runDigestTests( new Digest("RIPEMD-128"), [

    "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
    "3e67e64143573d714263ed98b8d85c1d",

    "En un lugar de La Mancha, de cuyo nombre no quiero acordarme...",
    "6a022533ba64455b63cdadbdc57dcc3d",

  ]);

}
