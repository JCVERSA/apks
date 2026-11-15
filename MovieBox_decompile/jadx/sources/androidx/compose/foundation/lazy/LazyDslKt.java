package androidx.compose.foundation.lazy;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.mvel2.ast.ASTNode;

public abstract class LazyDslKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0115  */
    /* JADX WARN: Code duplicated, block: B:106:0x012c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:121:0x0161 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0163  */
    /* JADX WARN: Code duplicated, block: B:123:0x0166  */
    /* JADX WARN: Code duplicated, block: B:126:0x016d  */
    /* JADX WARN: Code duplicated, block: B:127:0x0175  */
    /* JADX WARN: Code duplicated, block: B:129:0x0179  */
    /* JADX WARN: Code duplicated, block: B:130:0x0183  */
    /* JADX WARN: Code duplicated, block: B:133:0x0187  */
    /* JADX WARN: Code duplicated, block: B:136:0x018c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0190  */
    /* JADX WARN: Code duplicated, block: B:139:0x0195  */
    /* JADX WARN: Code duplicated, block: B:141:0x019c  */
    /* JADX WARN: Code duplicated, block: B:143:0x019f  */
    /* JADX WARN: Code duplicated, block: B:144:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:150:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:151:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:154:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:157:0x021d  */
    /* JADX WARN: Code duplicated, block: B:161:0x022a  */
    /* JADX WARN: Code duplicated, block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:82:0x00da  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:97:0x0104  */
    /* JADX WARN: Code duplicated, block: B:98:0x0107  */
    public static final void a(androidx.compose.ui.f fVar, LazyListState lazyListState, androidx.compose.foundation.layout.t tVar, boolean z10, androidx.compose.foundation.layout.b.k kVar, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b, androidx.compose.foundation.gestures.g gVar, boolean z11, final Function1 function1, androidx.compose.runtime.i iVar, final int i10, final int i11) {
        int i12;
        androidx.compose.foundation.layout.t tVar2;
        int i13;
        boolean z12;
        int i14;
        androidx.compose.foundation.layout.b.k kVar2;
        int i15;
        androidx.compose.ui.b.InterfaceC0036b interfaceC0036b2;
        int i16;
        androidx.compose.foundation.gestures.g gVar2;
        int i17;
        int i18;
        int i19;
        androidx.compose.ui.f fVar2;
        LazyListState lazyListStateC;
        androidx.compose.foundation.layout.t tVarA;
        boolean z13;
        androidx.compose.foundation.layout.b.k kVarA;
        androidx.compose.ui.b.InterfaceC0036b interfaceC0036bI;
        androidx.compose.foundation.gestures.g gVarA;
        boolean z14;
        androidx.compose.foundation.layout.b bVar;
        final boolean z15;
        final androidx.compose.foundation.layout.b.k kVar3;
        final androidx.compose.foundation.gestures.g gVar3;
        boolean z16;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(-740714857);
        int i20 = i11 & 1;
        if (i20 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            i12 = (iVarG.O(fVar) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 48) == 0) {
            i12 |= ((i11 & 2) == 0 && iVarG.O(lazyListState)) ? 32 : 16;
        }
        int i21 = i11 & 4;
        if (i21 == 0) {
            if ((i10 & 384) == 0) {
                tVar2 = tVar;
                i12 |= iVarG.O(tVar2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 3072) == 0) {
                    z12 = z10;
                    if (iVarG.a(z12)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i10 & 24576) == 0) {
                    if ((i11 & 16) == 0) {
                        kVar2 = kVar;
                        int i22 = iVarG.O(kVar2) ? 16384 : 8192;
                        i12 |= i22;
                    } else {
                        kVar2 = kVar;
                    }
                    i12 |= i22;
                } else {
                    kVar2 = kVar;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((196608 & i10) == 0) {
                        interfaceC0036b2 = interfaceC0036b;
                        if (iVarG.O(interfaceC0036b2)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    if ((1572864 & i10) == 0) {
                        if ((i11 & 64) == 0) {
                            gVar2 = gVar;
                            int i23 = iVarG.O(gVar2) ? 1048576 : 524288;
                            i12 |= i23;
                        } else {
                            gVar2 = gVar;
                        }
                        i12 |= i23;
                    } else {
                        gVar2 = gVar;
                    }
                    i17 = i11 & 128;
                    if (i17 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 12582912) == 0) {
                        if (iVarG.a(z11)) {
                            i18 = 8388608;
                        } else {
                            i18 = 4194304;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 100663296) == 0) {
                            if (iVarG.A(function1)) {
                                i19 = 67108864;
                            } else {
                                i19 = ASTNode.PCTX_STORED;
                            }
                            i12 |= i19;
                        }
                        if ((i12 & 38347923) == 38347922 || !iVarG.h()) {
                            iVarG.B();
                            if ((i10 & 1) != 0 || iVarG.I()) {
                                if (i20 != 0) {
                                    fVar2 = androidx.compose.ui.f.f3869a;
                                } else {
                                    fVar2 = fVar;
                                }
                                if ((i11 & 2) != 0) {
                                    lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                    i12 &= -113;
                                } else {
                                    lazyListStateC = lazyListState;
                                }
                                if (i21 != 0) {
                                    tVarA = PaddingKt.a(o0.i.g(0));
                                } else {
                                    tVarA = tVar2;
                                }
                                z13 = i13 == 0 ? z12 : false;
                                if ((i11 & 16) != 0) {
                                    bVar = androidx.compose.foundation.layout.b.f2527a;
                                    if (z13) {
                                        kVarA = bVar.a();
                                    } else {
                                        kVarA = bVar.d();
                                    }
                                    i12 &= -57345;
                                } else {
                                    kVarA = kVar2;
                                }
                                if (i15 != 0) {
                                    interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                                } else {
                                    interfaceC0036bI = interfaceC0036b2;
                                }
                                if ((i11 & 64) != 0) {
                                    gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                    i12 &= -3670017;
                                } else {
                                    gVarA = gVar2;
                                }
                                if (i17 != 0) {
                                    z14 = true;
                                } else {
                                    z14 = z11;
                                }
                            } else {
                                iVarG.G();
                                if ((i11 & 2) != 0) {
                                    i12 &= -113;
                                }
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
                                }
                                if ((i11 & 64) != 0) {
                                    i12 &= -3670017;
                                }
                                fVar2 = fVar;
                                lazyListStateC = lazyListState;
                                z14 = z11;
                                tVarA = tVar2;
                                z13 = z12;
                                kVarA = kVar2;
                                interfaceC0036bI = interfaceC0036b2;
                                gVarA = gVar2;
                            }
                            iVarG.s();
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                            }
                            int i24 = i12 >> 3;
                            LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i24) | (i24 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.P();
                            }
                            z15 = z13;
                            kVar3 = kVarA;
                            gVar3 = gVarA;
                            z16 = z14;
                        } else {
                            iVarG.G();
                            fVar2 = fVar;
                            lazyListStateC = lazyListState;
                            tVarA = tVar2;
                            z15 = z12;
                            kVar3 = kVar2;
                            interfaceC0036bI = interfaceC0036b2;
                            gVar3 = gVar2;
                            z16 = z11;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            final androidx.compose.ui.f fVar3 = fVar2;
                            final LazyListState lazyListState2 = lazyListStateC;
                            final androidx.compose.foundation.layout.t tVar3 = tVarA;
                            final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b3 = interfaceC0036bI;
                            final boolean z17 = z16;
                            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override
                                public Object invoke(Object obj, Object obj2) {
                                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                    return Unit.f64096a;
                                }

                                public final void invoke(androidx.compose.runtime.i iVar2, int i25) {
                                    LazyDslKt.a(fVar3, lazyListState2, tVar3, z15, kVar3, interfaceC0036b3, gVar3, z17, function1, iVar2, v1.a(i10 | 1), i11);
                                }
                            });
                        }
                    }
                    i12 |= 100663296;
                    if ((i12 & 38347923) == 38347922) {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i25 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i25) | (i25 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    } else {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i26 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i26) | (i26 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        final androidx.compose.ui.f fVar4 = fVar2;
                        final LazyListState lazyListState3 = lazyListStateC;
                        final androidx.compose.foundation.layout.t tVar4 = tVarA;
                        final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b4 = interfaceC0036bI;
                        final boolean z18 = z16;
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f64096a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i27) {
                                LazyDslKt.a(fVar4, lazyListState3, tVar4, z15, kVar3, interfaceC0036b4, gVar3, z18, function1, iVar2, v1.a(i10 | 1), i11);
                            }
                        });
                    }
                }
                i12 |= 196608;
                interfaceC0036b2 = interfaceC0036b;
                if ((1572864 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        gVar2 = gVar;
                        if (iVarG.O(gVar2)) {
                        }
                        i12 |= i23;
                    } else {
                        gVar2 = gVar;
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 12582912) == 0) {
                    if (iVarG.a(z11)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 100663296) == 0) {
                        if (iVarG.A(function1)) {
                            i19 = 67108864;
                        } else {
                            i19 = ASTNode.PCTX_STORED;
                        }
                        i12 |= i19;
                    }
                    if ((i12 & 38347923) == 38347922) {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i27 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i27) | (i27 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    } else {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i28 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i28) | (i28 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        final androidx.compose.ui.f fVar5 = fVar2;
                        final LazyListState lazyListState4 = lazyListStateC;
                        final androidx.compose.foundation.layout.t tVar5 = tVarA;
                        final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b5 = interfaceC0036bI;
                        final boolean z19 = z16;
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f64096a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i29) {
                                LazyDslKt.a(fVar5, lazyListState4, tVar5, z15, kVar3, interfaceC0036b5, gVar3, z19, function1, iVar2, v1.a(i10 | 1), i11);
                            }
                        });
                    }
                }
                i12 |= 100663296;
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i29 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i29) | (i29 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i210 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i210) | (i210 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar6 = fVar2;
                    final LazyListState lazyListState5 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar6 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b6 = interfaceC0036bI;
                    final boolean z110 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i211) {
                            LazyDslKt.a(fVar6, lazyListState5, tVar6, z15, kVar3, interfaceC0036b6, gVar3, z110, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 3072;
            z12 = z10;
            if ((i10 & 24576) == 0) {
                if ((i11 & 16) == 0) {
                    kVar2 = kVar;
                    if (iVarG.O(kVar2)) {
                    }
                    i12 |= i22;
                } else {
                    kVar2 = kVar;
                }
                i12 |= i22;
            } else {
                kVar2 = kVar;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((196608 & i10) == 0) {
                    interfaceC0036b2 = interfaceC0036b;
                    if (iVarG.O(interfaceC0036b2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((1572864 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        gVar2 = gVar;
                        if (iVarG.O(gVar2)) {
                        }
                        i12 |= i23;
                    } else {
                        gVar2 = gVar;
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 12582912) == 0) {
                    if (iVarG.a(z11)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 100663296) == 0) {
                        if (iVarG.A(function1)) {
                            i19 = 67108864;
                        } else {
                            i19 = ASTNode.PCTX_STORED;
                        }
                        i12 |= i19;
                    }
                    if ((i12 & 38347923) == 38347922) {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i211 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i211) | (i211 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    } else {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i212 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i212) | (i212 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        final androidx.compose.ui.f fVar7 = fVar2;
                        final LazyListState lazyListState6 = lazyListStateC;
                        final androidx.compose.foundation.layout.t tVar7 = tVarA;
                        final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b7 = interfaceC0036bI;
                        final boolean z111 = z16;
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f64096a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i213) {
                                LazyDslKt.a(fVar7, lazyListState6, tVar7, z15, kVar3, interfaceC0036b7, gVar3, z111, function1, iVar2, v1.a(i10 | 1), i11);
                            }
                        });
                    }
                }
                i12 |= 100663296;
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i213 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i213) | (i213 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i214 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i214) | (i214 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar8 = fVar2;
                    final LazyListState lazyListState7 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar8 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b8 = interfaceC0036bI;
                    final boolean z112 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i215) {
                            LazyDslKt.a(fVar8, lazyListState7, tVar8, z15, kVar3, interfaceC0036b8, gVar3, z112, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 196608;
            interfaceC0036b2 = interfaceC0036b;
            if ((1572864 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    gVar2 = gVar;
                    if (iVarG.O(gVar2)) {
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i12 |= i23;
            } else {
                gVar2 = gVar;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 12582912) == 0) {
                if (iVarG.a(z11)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 100663296) == 0) {
                    if (iVarG.A(function1)) {
                        i19 = 67108864;
                    } else {
                        i19 = ASTNode.PCTX_STORED;
                    }
                    i12 |= i19;
                }
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i215 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i215) | (i215 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i216 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i216) | (i216 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar9 = fVar2;
                    final LazyListState lazyListState8 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar9 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b9 = interfaceC0036bI;
                    final boolean z113 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i217) {
                            LazyDslKt.a(fVar9, lazyListState8, tVar9, z15, kVar3, interfaceC0036b9, gVar3, z113, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 100663296;
            if ((i12 & 38347923) == 38347922) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i217 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i217) | (i217 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i218 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i218) | (i218 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar10 = fVar2;
                final LazyListState lazyListState9 = lazyListStateC;
                final androidx.compose.foundation.layout.t tVar10 = tVarA;
                final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b10 = interfaceC0036bI;
                final boolean z114 = z16;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i219) {
                        LazyDslKt.a(fVar10, lazyListState9, tVar10, z15, kVar3, interfaceC0036b10, gVar3, z114, function1, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 384;
        tVar2 = tVar;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 3072) == 0) {
                z12 = z10;
                if (iVarG.a(z12)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i10 & 24576) == 0) {
                if ((i11 & 16) == 0) {
                    kVar2 = kVar;
                    if (iVarG.O(kVar2)) {
                    }
                    i12 |= i22;
                } else {
                    kVar2 = kVar;
                }
                i12 |= i22;
            } else {
                kVar2 = kVar;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((196608 & i10) == 0) {
                    interfaceC0036b2 = interfaceC0036b;
                    if (iVarG.O(interfaceC0036b2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((1572864 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        gVar2 = gVar;
                        if (iVarG.O(gVar2)) {
                        }
                        i12 |= i23;
                    } else {
                        gVar2 = gVar;
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 12582912) == 0) {
                    if (iVarG.a(z11)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 100663296) == 0) {
                        if (iVarG.A(function1)) {
                            i19 = 67108864;
                        } else {
                            i19 = ASTNode.PCTX_STORED;
                        }
                        i12 |= i19;
                    }
                    if ((i12 & 38347923) == 38347922) {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i219 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i219) | (i219 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    } else {
                        iVarG.B();
                        if ((i10 & 1) != 0) {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        } else {
                            if (i20 != 0) {
                                fVar2 = androidx.compose.ui.f.f3869a;
                            } else {
                                fVar2 = fVar;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateC = lazyListState;
                            }
                            if (i21 != 0) {
                                tVarA = PaddingKt.a(o0.i.g(0));
                            } else {
                                tVarA = tVar2;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                bVar = androidx.compose.foundation.layout.b.f2527a;
                                if (z13) {
                                    kVarA = bVar.d();
                                } else {
                                    kVarA = bVar.a();
                                }
                                i12 &= -57345;
                            } else {
                                kVarA = kVar2;
                            }
                            if (i15 != 0) {
                                interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                            } else {
                                interfaceC0036bI = interfaceC0036b2;
                            }
                            if ((i11 & 64) != 0) {
                                gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                                i12 &= -3670017;
                            } else {
                                gVarA = gVar2;
                            }
                            if (i17 != 0) {
                                z14 = true;
                            } else {
                                z14 = z11;
                            }
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                        }
                        int i2110 = i12 >> 3;
                        LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2110) | (i2110 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        z15 = z13;
                        kVar3 = kVarA;
                        gVar3 = gVarA;
                        z16 = z14;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        final androidx.compose.ui.f fVar11 = fVar2;
                        final LazyListState lazyListState10 = lazyListStateC;
                        final androidx.compose.foundation.layout.t tVar11 = tVarA;
                        final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b11 = interfaceC0036bI;
                        final boolean z115 = z16;
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f64096a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i2111) {
                                LazyDslKt.a(fVar11, lazyListState10, tVar11, z15, kVar3, interfaceC0036b11, gVar3, z115, function1, iVar2, v1.a(i10 | 1), i11);
                            }
                        });
                    }
                }
                i12 |= 100663296;
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2111 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2111) | (i2111 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2112 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2112) | (i2112 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar12 = fVar2;
                    final LazyListState lazyListState11 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar12 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b12 = interfaceC0036bI;
                    final boolean z116 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i2113) {
                            LazyDslKt.a(fVar12, lazyListState11, tVar12, z15, kVar3, interfaceC0036b12, gVar3, z116, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 196608;
            interfaceC0036b2 = interfaceC0036b;
            if ((1572864 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    gVar2 = gVar;
                    if (iVarG.O(gVar2)) {
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i12 |= i23;
            } else {
                gVar2 = gVar;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 12582912) == 0) {
                if (iVarG.a(z11)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 100663296) == 0) {
                    if (iVarG.A(function1)) {
                        i19 = 67108864;
                    } else {
                        i19 = ASTNode.PCTX_STORED;
                    }
                    i12 |= i19;
                }
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2113 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2113) | (i2113 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2114 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2114) | (i2114 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar13 = fVar2;
                    final LazyListState lazyListState12 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar13 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b13 = interfaceC0036bI;
                    final boolean z117 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i2115) {
                            LazyDslKt.a(fVar13, lazyListState12, tVar13, z15, kVar3, interfaceC0036b13, gVar3, z117, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 100663296;
            if ((i12 & 38347923) == 38347922) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i2115 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2115) | (i2115 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i2116 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2116) | (i2116 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar14 = fVar2;
                final LazyListState lazyListState13 = lazyListStateC;
                final androidx.compose.foundation.layout.t tVar14 = tVarA;
                final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b14 = interfaceC0036bI;
                final boolean z118 = z16;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i2117) {
                        LazyDslKt.a(fVar14, lazyListState13, tVar14, z15, kVar3, interfaceC0036b14, gVar3, z118, function1, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 3072;
        z12 = z10;
        if ((i10 & 24576) == 0) {
            if ((i11 & 16) == 0) {
                kVar2 = kVar;
                if (iVarG.O(kVar2)) {
                }
                i12 |= i22;
            } else {
                kVar2 = kVar;
            }
            i12 |= i22;
        } else {
            kVar2 = kVar;
        }
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((196608 & i10) == 0) {
                interfaceC0036b2 = interfaceC0036b;
                if (iVarG.O(interfaceC0036b2)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((1572864 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    gVar2 = gVar;
                    if (iVarG.O(gVar2)) {
                    }
                    i12 |= i23;
                } else {
                    gVar2 = gVar;
                }
                i12 |= i23;
            } else {
                gVar2 = gVar;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 12582912) == 0) {
                if (iVarG.a(z11)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 100663296) == 0) {
                    if (iVarG.A(function1)) {
                        i19 = 67108864;
                    } else {
                        i19 = ASTNode.PCTX_STORED;
                    }
                    i12 |= i19;
                }
                if ((i12 & 38347923) == 38347922) {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2117 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2117) | (i2117 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                } else {
                    iVarG.B();
                    if ((i10 & 1) != 0) {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    } else {
                        if (i20 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar2 = fVar;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateC = lazyListState;
                        }
                        if (i21 != 0) {
                            tVarA = PaddingKt.a(o0.i.g(0));
                        } else {
                            tVarA = tVar2;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            bVar = androidx.compose.foundation.layout.b.f2527a;
                            if (z13) {
                                kVarA = bVar.d();
                            } else {
                                kVarA = bVar.a();
                            }
                            i12 &= -57345;
                        } else {
                            kVarA = kVar2;
                        }
                        if (i15 != 0) {
                            interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                        } else {
                            interfaceC0036bI = interfaceC0036b2;
                        }
                        if ((i11 & 64) != 0) {
                            gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                            i12 &= -3670017;
                        } else {
                            gVarA = gVar2;
                        }
                        if (i17 != 0) {
                            z14 = true;
                        } else {
                            z14 = z11;
                        }
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                    }
                    int i2118 = i12 >> 3;
                    LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2118) | (i2118 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    z15 = z13;
                    kVar3 = kVarA;
                    gVar3 = gVarA;
                    z16 = z14;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar15 = fVar2;
                    final LazyListState lazyListState14 = lazyListStateC;
                    final androidx.compose.foundation.layout.t tVar15 = tVarA;
                    final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b15 = interfaceC0036bI;
                    final boolean z119 = z16;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i2119) {
                            LazyDslKt.a(fVar15, lazyListState14, tVar15, z15, kVar3, interfaceC0036b15, gVar3, z119, function1, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 100663296;
            if ((i12 & 38347923) == 38347922) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i2119 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2119) | (i2119 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i21110 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21110) | (i21110 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar16 = fVar2;
                final LazyListState lazyListState15 = lazyListStateC;
                final androidx.compose.foundation.layout.t tVar16 = tVarA;
                final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b16 = interfaceC0036bI;
                final boolean z1110 = z16;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i21111) {
                        LazyDslKt.a(fVar16, lazyListState15, tVar16, z15, kVar3, interfaceC0036b16, gVar3, z1110, function1, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 196608;
        interfaceC0036b2 = interfaceC0036b;
        if ((1572864 & i10) == 0) {
            if ((i11 & 64) == 0) {
                gVar2 = gVar;
                if (iVarG.O(gVar2)) {
                }
                i12 |= i23;
            } else {
                gVar2 = gVar;
            }
            i12 |= i23;
        } else {
            gVar2 = gVar;
        }
        i17 = i11 & 128;
        if (i17 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 12582912) == 0) {
            if (iVarG.a(z11)) {
                i18 = 8388608;
            } else {
                i18 = 4194304;
            }
            i12 |= i18;
        }
        if ((i11 & 256) != 0) {
            if ((i10 & 100663296) == 0) {
                if (iVarG.A(function1)) {
                    i19 = 67108864;
                } else {
                    i19 = ASTNode.PCTX_STORED;
                }
                i12 |= i19;
            }
            if ((i12 & 38347923) == 38347922) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i21111 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21111) | (i21111 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                } else {
                    if (i20 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar2 = fVar;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateC = lazyListState;
                    }
                    if (i21 != 0) {
                        tVarA = PaddingKt.a(o0.i.g(0));
                    } else {
                        tVarA = tVar2;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        bVar = androidx.compose.foundation.layout.b.f2527a;
                        if (z13) {
                            kVarA = bVar.d();
                        } else {
                            kVarA = bVar.a();
                        }
                        i12 &= -57345;
                    } else {
                        kVarA = kVar2;
                    }
                    if (i15 != 0) {
                        interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                    } else {
                        interfaceC0036bI = interfaceC0036b2;
                    }
                    if ((i11 & 64) != 0) {
                        gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                        i12 &= -3670017;
                    } else {
                        gVarA = gVar2;
                    }
                    if (i17 != 0) {
                        z14 = true;
                    } else {
                        z14 = z11;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
                }
                int i21112 = i12 >> 3;
                LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21112) | (i21112 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                z15 = z13;
                kVar3 = kVarA;
                gVar3 = gVarA;
                z16 = z14;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar17 = fVar2;
                final LazyListState lazyListState16 = lazyListStateC;
                final androidx.compose.foundation.layout.t tVar17 = tVarA;
                final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b17 = interfaceC0036bI;
                final boolean z1111 = z16;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i21113) {
                        LazyDslKt.a(fVar17, lazyListState16, tVar17, z15, kVar3, interfaceC0036b17, gVar3, z1111, function1, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 100663296;
        if ((i12 & 38347923) == 38347922) {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar2 = fVar;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateC = lazyListState;
                }
                if (i21 != 0) {
                    tVarA = PaddingKt.a(o0.i.g(0));
                } else {
                    tVarA = tVar2;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    bVar = androidx.compose.foundation.layout.b.f2527a;
                    if (z13) {
                        kVarA = bVar.d();
                    } else {
                        kVarA = bVar.a();
                    }
                    i12 &= -57345;
                } else {
                    kVarA = kVar2;
                }
                if (i15 != 0) {
                    interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                } else {
                    interfaceC0036bI = interfaceC0036b2;
                }
                if ((i11 & 64) != 0) {
                    gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                    i12 &= -3670017;
                } else {
                    gVarA = gVar2;
                }
                if (i17 != 0) {
                    z14 = true;
                } else {
                    z14 = z11;
                }
            } else {
                if (i20 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar2 = fVar;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateC = lazyListState;
                }
                if (i21 != 0) {
                    tVarA = PaddingKt.a(o0.i.g(0));
                } else {
                    tVarA = tVar2;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    bVar = androidx.compose.foundation.layout.b.f2527a;
                    if (z13) {
                        kVarA = bVar.d();
                    } else {
                        kVarA = bVar.a();
                    }
                    i12 &= -57345;
                } else {
                    kVarA = kVar2;
                }
                if (i15 != 0) {
                    interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                } else {
                    interfaceC0036bI = interfaceC0036b2;
                }
                if ((i11 & 64) != 0) {
                    gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                    i12 &= -3670017;
                } else {
                    gVarA = gVar2;
                }
                if (i17 != 0) {
                    z14 = true;
                } else {
                    z14 = z11;
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
            }
            int i21113 = i12 >> 3;
            LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21113) | (i21113 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            z15 = z13;
            kVar3 = kVarA;
            gVar3 = gVarA;
            z16 = z14;
        } else {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar2 = fVar;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateC = lazyListState;
                }
                if (i21 != 0) {
                    tVarA = PaddingKt.a(o0.i.g(0));
                } else {
                    tVarA = tVar2;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    bVar = androidx.compose.foundation.layout.b.f2527a;
                    if (z13) {
                        kVarA = bVar.d();
                    } else {
                        kVarA = bVar.a();
                    }
                    i12 &= -57345;
                } else {
                    kVarA = kVar2;
                }
                if (i15 != 0) {
                    interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                } else {
                    interfaceC0036bI = interfaceC0036b2;
                }
                if ((i11 & 64) != 0) {
                    gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                    i12 &= -3670017;
                } else {
                    gVarA = gVar2;
                }
                if (i17 != 0) {
                    z14 = true;
                } else {
                    z14 = z11;
                }
            } else {
                if (i20 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar2 = fVar;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateC = LazyListStateKt.c(0, 0, iVarG, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateC = lazyListState;
                }
                if (i21 != 0) {
                    tVarA = PaddingKt.a(o0.i.g(0));
                } else {
                    tVarA = tVar2;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    bVar = androidx.compose.foundation.layout.b.f2527a;
                    if (z13) {
                        kVarA = bVar.d();
                    } else {
                        kVarA = bVar.a();
                    }
                    i12 &= -57345;
                } else {
                    kVarA = kVar2;
                }
                if (i15 != 0) {
                    interfaceC0036bI = androidx.compose.ui.b.f3778a.i();
                } else {
                    interfaceC0036bI = interfaceC0036b2;
                }
                if ((i11 & 64) != 0) {
                    gVarA = androidx.compose.foundation.gestures.m.f2419a.a(iVarG, 6);
                    i12 &= -3670017;
                } else {
                    gVarA = gVar2;
                }
                if (i17 != 0) {
                    z14 = true;
                } else {
                    z14 = z11;
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-740714857, i12, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:366)");
            }
            int i21114 = i12 >> 3;
            LazyListKt.a(fVar2, lazyListStateC, tVarA, z13, true, gVarA, z14, 0, interfaceC0036bI, kVarA, null, null, function1, iVarG, (i12 & 14) | 24576 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21114) | (i21114 & 3670016) | ((i12 << 9) & 234881024) | ((i12 << 15) & 1879048192), (i12 >> 18) & 896, 3200);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            z15 = z13;
            kVar3 = kVarA;
            gVar3 = gVarA;
            z16 = z14;
        }
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            final androidx.compose.ui.f fVar18 = fVar2;
            final LazyListState lazyListState17 = lazyListStateC;
            final androidx.compose.foundation.layout.t tVar18 = tVarA;
            final androidx.compose.ui.b.InterfaceC0036b interfaceC0036b18 = interfaceC0036bI;
            final boolean z1112 = z16;
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i21115) {
                    LazyDslKt.a(fVar18, lazyListState17, tVar18, z15, kVar3, interfaceC0036b18, gVar3, z1112, function1, iVar2, v1.a(i10 | 1), i11);
                }
            });
        }
    }
}
