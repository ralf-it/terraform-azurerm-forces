locals {
  ##################################################################################################
  #### Helper mapping alphabet to octets
  ##################################################################################################

  mapping = {
    "aa" : 0,
    "ab" : 0,
    "ac" : 1,
    "ad" : 1,
    "ae" : 2,
    "af" : 2,
    "ag" : 3,
    "ah" : 3,
    "ai" : 4,
    "aj" : 4,
    "ak" : 5,
    "al" : 5,
    "am" : 6,
    "an" : 6,
    "ao" : 7,
    "ap" : 7,
    "aq" : 8,
    "ar" : 8,
    "as" : 9,
    "at" : 9,
    "au" : 10,
    "av" : 10,
    "aw" : 11,
    "ax" : 11,
    "ay" : 11,
    "az" : 11,
    "ba" : 12,
    "bb" : 12,
    "bc" : 12,
    "bd" : 13,
    "be" : 13,
    "bf" : 13,
    "bg" : 14,
    "bh" : 14,
    "bi" : 14,
    "bj" : 15,
    "bk" : 15,
    "bl" : 15,
    "bm" : 16,
    "bn" : 16,
    "bo" : 16,
    "bp" : 17,
    "bq" : 17,
    "br" : 17,
    "bs" : 18,
    "bt" : 18,
    "bu" : 18,
    "bv" : 19,
    "bw" : 19,
    "bx" : 19,
    "by" : 20,
    "bz" : 20,
    "ca" : 21,
    "cb" : 21,
    "cc" : 22,
    "cd" : 22,
    "ce" : 23,
    "cf" : 23,
    "cg" : 24,
    "ch" : 24,
    "ci" : 25,
    "cj" : 25,
    "ck" : 26,
    "cl" : 26,
    "cm" : 27,
    "cn" : 27,
    "co" : 28,
    "cp" : 28,
    "cq" : 29,
    "cr" : 29,
    "cs" : 30,
    "ct" : 30,
    "cu" : 31,
    "cv" : 31,
    "cw" : 32,
    "cx" : 32,
    "cy" : 32,
    "cz" : 32,
    "da" : 33,
    "db" : 33,
    "dc" : 34,
    "dd" : 34,
    "de" : 35,
    "df" : 35,
    "dg" : 36,
    "dh" : 36,
    "di" : 37,
    "dj" : 37,
    "dk" : 38,
    "dl" : 38,
    "dm" : 39,
    "dn" : 39,
    "do" : 40,
    "dp" : 40,
    "dq" : 41,
    "dr" : 41,
    "ds" : 42,
    "dt" : 42,
    "du" : 43,
    "dv" : 43,
    "dw" : 44,
    "dx" : 44,
    "dy" : 44,
    "dz" : 44,
    "ea" : 45,
    "eb" : 45,
    "ec" : 45,
    "ed" : 46,
    "ee" : 46,
    "ef" : 46,
    "eg" : 47,
    "eh" : 47,
    "ei" : 47,
    "ej" : 48,
    "ek" : 48,
    "el" : 48,
    "em" : 49,
    "en" : 49,
    "eo" : 49,
    "ep" : 50,
    "eq" : 50,
    "er" : 50,
    "es" : 51,
    "et" : 51,
    "eu" : 51,
    "ev" : 52,
    "ew" : 52,
    "ex" : 52,
    "ey" : 53,
    "ez" : 53,
    "fa" : 54,
    "fb" : 54,
    "fc" : 55,
    "fd" : 55,
    "fe" : 56,
    "ff" : 56,
    "fg" : 57,
    "fh" : 57,
    "fi" : 58,
    "fj" : 58,
    "fk" : 59,
    "fl" : 59,
    "fm" : 60,
    "fn" : 60,
    "fo" : 61,
    "fp" : 61,
    "fq" : 62,
    "fr" : 62,
    "fs" : 63,
    "ft" : 63,
    "fu" : 64,
    "fv" : 64,
    "fw" : 65,
    "fx" : 65,
    "fy" : 65,
    "fz" : 65,
    "ga" : 66,
    "gb" : 66,
    "gc" : 66,
    "gd" : 67,
    "ge" : 67,
    "gf" : 67,
    "gg" : 68,
    "gh" : 68,
    "gi" : 68,
    "gj" : 69,
    "gk" : 69,
    "gl" : 69,
    "gm" : 70,
    "gn" : 70,
    "go" : 70,
    "gp" : 71,
    "gq" : 71,
    "gr" : 71,
    "gs" : 72,
    "gt" : 72,
    "gu" : 72,
    "gv" : 73,
    "gw" : 73,
    "gx" : 73,
    "gy" : 74,
    "gz" : 74,
    "ha" : 75,
    "hb" : 75,
    "hc" : 75,
    "hd" : 76,
    "he" : 76,
    "hf" : 76,
    "hg" : 77,
    "hh" : 77,
    "hi" : 77,
    "hj" : 78,
    "hk" : 78,
    "hl" : 78,
    "hm" : 79,
    "hn" : 79,
    "ho" : 79,
    "hp" : 80,
    "hq" : 80,
    "hr" : 80,
    "hs" : 81,
    "ht" : 81,
    "hu" : 81,
    "hv" : 82,
    "hw" : 82,
    "hx" : 82,
    "hy" : 83,
    "hz" : 83,
    "ia" : 84,
    "ib" : 84,
    "ic" : 84,
    "id" : 85,
    "ie" : 85,
    "if" : 85,
    "ig" : 86,
    "ih" : 86,
    "ii" : 86,
    "ij" : 87,
    "ik" : 87,
    "il" : 87,
    "im" : 88,
    "in" : 88,
    "io" : 88,
    "ip" : 89,
    "iq" : 89,
    "ir" : 89,
    "is" : 90,
    "it" : 90,
    "iu" : 90,
    "iv" : 91,
    "iw" : 91,
    "ix" : 91,
    "iy" : 92,
    "iz" : 92,
    "ja" : 93,
    "jb" : 93,
    "jc" : 94,
    "jd" : 94,
    "je" : 95,
    "jf" : 95,
    "jg" : 96,
    "jh" : 96,
    "ji" : 97,
    "jj" : 97,
    "jk" : 98,
    "jl" : 98,
    "jm" : 99,
    "jn" : 99,
    "jo" : 100,
    "jp" : 100,
    "jq" : 101,
    "jr" : 101,
    "js" : 102,
    "jt" : 102,
    "ju" : 103,
    "jv" : 103,
    "jw" : 104,
    "jx" : 104,
    "jy" : 104,
    "jz" : 104,
    "ka" : 105,
    "kb" : 105,
    "kc" : 105,
    "kd" : 106,
    "ke" : 106,
    "kf" : 106,
    "kg" : 107,
    "kh" : 107,
    "ki" : 107,
    "kj" : 108,
    "kk" : 108,
    "kl" : 108,
    "km" : 109,
    "kn" : 109,
    "ko" : 109,
    "kp" : 110,
    "kq" : 110,
    "kr" : 110,
    "ks" : 111,
    "kt" : 111,
    "ku" : 111,
    "kv" : 112,
    "kw" : 112,
    "kx" : 112,
    "ky" : 113,
    "kz" : 113,
    "la" : 114,
    "lb" : 114,
    "lc" : 114,
    "ld" : 115,
    "le" : 115,
    "lf" : 115,
    "lg" : 116,
    "lh" : 116,
    "li" : 116,
    "lj" : 117,
    "lk" : 117,
    "ll" : 117,
    "lm" : 118,
    "ln" : 118,
    "lo" : 118,
    "lp" : 119,
    "lq" : 119,
    "lr" : 119,
    "ls" : 120,
    "lt" : 120,
    "lu" : 120,
    "lv" : 121,
    "lw" : 121,
    "lx" : 121,
    "ly" : 122,
    "lz" : 122,
    "ma" : 123,
    "mb" : 123,
    "mc" : 123,
    "md" : 124,
    "me" : 124,
    "mf" : 124,
    "mg" : 125,
    "mh" : 125,
    "mi" : 125,
    "mj" : 126,
    "mk" : 126,
    "ml" : 126,
    "mm" : 127,
    "mn" : 127,
    "mo" : 127,
    "mp" : 128,
    "mq" : 128,
    "mr" : 128,
    "ms" : 129,
    "mt" : 129,
    "mu" : 129,
    "mv" : 130,
    "mw" : 130,
    "mx" : 130,
    "my" : 131,
    "mz" : 131,
    "na" : 132,
    "nb" : 132,
    "nc" : 132,
    "nd" : 133,
    "ne" : 133,
    "nf" : 133,
    "ng" : 134,
    "nh" : 134,
    "ni" : 134,
    "nj" : 135,
    "nk" : 135,
    "nl" : 135,
    "nm" : 136,
    "nn" : 136,
    "no" : 136,
    "np" : 137,
    "nq" : 137,
    "nr" : 137,
    "ns" : 138,
    "nt" : 138,
    "nu" : 138,
    "nv" : 139,
    "nw" : 139,
    "nx" : 139,
    "ny" : 140,
    "nz" : 140,
    "oa" : 141,
    "ob" : 141,
    "oc" : 141,
    "od" : 142,
    "oe" : 142,
    "of" : 142,
    "og" : 143,
    "oh" : 143,
    "oi" : 143,
    "oj" : 144,
    "ok" : 144,
    "ol" : 144,
    "om" : 145,
    "on" : 145,
    "oo" : 145,
    "op" : 146,
    "oq" : 146,
    "or" : 146,
    "os" : 147,
    "ot" : 147,
    "ou" : 147,
    "ov" : 148,
    "ow" : 148,
    "ox" : 148,
    "oy" : 149,
    "oz" : 149,
    "pa" : 150,
    "pb" : 150,
    "pc" : 150,
    "pd" : 151,
    "pe" : 151,
    "pf" : 151,
    "pg" : 152,
    "ph" : 152,
    "pi" : 152,
    "pj" : 153,
    "pk" : 153,
    "pl" : 153,
    "pm" : 154,
    "pn" : 154,
    "po" : 154,
    "pp" : 155,
    "pq" : 155,
    "pr" : 155,
    "ps" : 156,
    "pt" : 156,
    "pu" : 156,
    "pv" : 157,
    "pw" : 157,
    "px" : 157,
    "py" : 158,
    "pz" : 158,
    "qa" : 159,
    "qb" : 159,
    "qc" : 159,
    "qd" : 160,
    "qe" : 160,
    "qf" : 160,
    "qg" : 161,
    "qh" : 161,
    "qi" : 161,
    "qj" : 162,
    "qk" : 162,
    "ql" : 162,
    "qm" : 163,
    "qn" : 163,
    "qo" : 163,
    "qp" : 164,
    "qq" : 164,
    "qr" : 164,
    "qs" : 165,
    "qt" : 165,
    "qu" : 165,
    "qv" : 166,
    "qw" : 166,
    "qx" : 166,
    "qy" : 167,
    "qz" : 167,
    "ra" : 168,
    "rb" : 168,
    "rc" : 169,
    "rd" : 169,
    "re" : 170,
    "rf" : 170,
    "rg" : 171,
    "rh" : 171,
    "ri" : 172,
    "rj" : 172,
    "rk" : 173,
    "rl" : 173,
    "rm" : 174,
    "rn" : 174,
    "ro" : 175,
    "rp" : 175,
    "rq" : 176,
    "rr" : 176,
    "rs" : 177,
    "rt" : 177,
    "ru" : 178,
    "rv" : 178,
    "rw" : 179,
    "rx" : 179,
    "ry" : 179,
    "rz" : 179,
    "sa" : 180,
    "sb" : 180,
    "sc" : 180,
    "sd" : 181,
    "se" : 181,
    "sf" : 181,
    "sg" : 182,
    "sh" : 182,
    "si" : 182,
    "sj" : 183,
    "sk" : 183,
    "sl" : 183,
    "sm" : 184,
    "sn" : 184,
    "so" : 184,
    "sp" : 185,
    "sq" : 185,
    "sr" : 185,
    "ss" : 186,
    "st" : 186,
    "su" : 186,
    "sv" : 187,
    "sw" : 187,
    "sx" : 187,
    "sy" : 188,
    "sz" : 188,
    "ta" : 189,
    "tb" : 189,
    "tc" : 189,
    "td" : 190,
    "te" : 190,
    "tf" : 190,
    "tg" : 191,
    "th" : 191,
    "ti" : 191,
    "tj" : 192,
    "tk" : 192,
    "tl" : 192,
    "tm" : 193,
    "tn" : 193,
    "to" : 193,
    "tp" : 194,
    "tq" : 194,
    "tr" : 194,
    "ts" : 195,
    "tt" : 195,
    "tu" : 195,
    "tv" : 196,
    "tw" : 196,
    "tx" : 196,
    "ty" : 197,
    "tz" : 197,
    "ua" : 198,
    "ub" : 198,
    "uc" : 198,
    "ud" : 199,
    "ue" : 199,
    "uf" : 199,
    "ug" : 200,
    "uh" : 200,
    "ui" : 200,
    "uj" : 201,
    "uk" : 201,
    "ul" : 201,
    "um" : 202,
    "un" : 202,
    "uo" : 202,
    "up" : 203,
    "uq" : 203,
    "ur" : 203,
    "us" : 204,
    "ut" : 204,
    "uu" : 204,
    "uv" : 205,
    "uw" : 205,
    "ux" : 205,
    "uy" : 206,
    "uz" : 206,
    "va" : 207,
    "vb" : 207,
    "vc" : 208,
    "vd" : 208,
    "ve" : 209,
    "vf" : 209,
    "vg" : 210,
    "vh" : 210,
    "vi" : 211,
    "vj" : 211,
    "vk" : 212,
    "vl" : 212,
    "vm" : 213,
    "vn" : 213,
    "vo" : 214,
    "vp" : 214,
    "vq" : 215,
    "vr" : 215,
    "vs" : 216,
    "vt" : 216,
    "vu" : 217,
    "vv" : 217,
    "vw" : 218,
    "vx" : 218,
    "vy" : 218,
    "vz" : 218,
    "wa" : 219,
    "wb" : 219,
    "wc" : 219,
    "wd" : 220,
    "we" : 220,
    "wf" : 220,
    "wg" : 221,
    "wh" : 221,
    "wi" : 221,
    "wj" : 222,
    "wk" : 222,
    "wl" : 222,
    "wm" : 223,
    "wn" : 223,
    "wo" : 223,
    "wp" : 224,
    "wq" : 224,
    "wr" : 224,
    "ws" : 225,
    "wt" : 225,
    "wu" : 225,
    "wv" : 226,
    "ww" : 226,
    "wx" : 226,
    "wy" : 227,
    "wz" : 227,
    "xa" : 228,
    "xb" : 228,
    "xc" : 228,
    "xd" : 229,
    "xe" : 229,
    "xf" : 229,
    "xg" : 230,
    "xh" : 230,
    "xi" : 230,
    "xj" : 231,
    "xk" : 231,
    "xl" : 231,
    "xm" : 232,
    "xn" : 232,
    "xo" : 232,
    "xp" : 233,
    "xq" : 233,
    "xr" : 233,
    "xs" : 234,
    "xt" : 234,
    "xu" : 234,
    "xv" : 235,
    "xw" : 235,
    "xx" : 235,
    "xy" : 236,
    "xz" : 236,
    "ya" : 237,
    "yb" : 237,
    "yc" : 237,
    "yd" : 238,
    "ye" : 238,
    "yf" : 238,
    "yg" : 239,
    "yh" : 239,
    "yi" : 239,
    "yj" : 240,
    "yk" : 240,
    "yl" : 240,
    "ym" : 241,
    "yn" : 241,
    "yo" : 241,
    "yp" : 242,
    "yq" : 242,
    "yr" : 242,
    "ys" : 243,
    "yt" : 243,
    "yu" : 243,
    "yv" : 244,
    "yw" : 244,
    "yx" : 244,
    "yy" : 245,
    "yz" : 245,
    "za" : 246,
    "zb" : 246,
    "zc" : 246,
    "zd" : 247,
    "ze" : 247,
    "zf" : 247,
    "zg" : 248,
    "zh" : 248,
    "zi" : 248,
    "zj" : 249,
    "zk" : 249,
    "zl" : 249,
    "zm" : 250,
    "zn" : 250,
    "zo" : 250,
    "zp" : 251,
    "zq" : 251,
    "zr" : 251,
    "zs" : 252,
    "zt" : 252,
    "zu" : 252,
    "zv" : 253,
    "zw" : 253,
    "zx" : 253,
    "zy" : 254,
    "zz" : 254
  }
}
