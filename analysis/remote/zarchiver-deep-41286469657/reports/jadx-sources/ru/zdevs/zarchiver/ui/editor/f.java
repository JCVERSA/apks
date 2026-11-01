package ru.zdevs.zarchiver.ui.editor;

import android.os.Build;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import java.util.ArrayList;

public final class f {
    public static boolean a(boolean z2, int[] iArr, int i2) {
        if (!z2) {
            iArr[1] = i2;
            iArr[0] = i2;
        } else {
            if (i2 < iArr[0]) {
                return false;
            }
            iArr[1] = i2;
        }
        return true;
    }

    public static boolean b(b bVar, boolean z2) {
        int[] iArr = bVar.f1861g;
        int i2 = iArr[0];
        if (i2 == -1) {
            return false;
        }
        int i3 = iArr[1];
        boolean z3 = (i3 == -1 || i2 == i3) ? false : true;
        if (z2) {
            if (z3) {
                if (i2 > i3) {
                    iArr[1] = i3 - 1;
                    return true;
                }
            } else if (i2 > 0) {
                int i4 = i2 - 1;
                iArr[0] = i4;
                iArr[1] = i4;
                return true;
            }
        } else if (z3) {
            if (i3 < bVar.f1857c) {
                iArr[1] = i3 + 1;
                return true;
            }
        } else if (i2 < bVar.f1857c) {
            int i5 = i2 + 1;
            iArr[0] = i5;
            iArr[1] = i5;
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public static boolean c(b bVar, boolean z2) {
        int[] iArr = bVar.f1861g;
        int i2 = 0;
        int i3 = iArr[0];
        if (i3 == -1) {
            return false;
        }
        int i4 = iArr[1];
        ?? r2 = (i4 == -1 || i3 == i4) ? 0 : 1;
        b.d dVarD = bVar.d(bVar.f(iArr[r2]));
        if (dVarD == null) {
            return false;
        }
        int i5 = dVarD.f1878a;
        if (!z2) {
            i2 = i5 - ((dVarD.f1879b & 1) != 0 ? 1 : 0);
        }
        return a(r2, iArr, i5 + i2);
    }

    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    public static boolean d(EditableView editableView, b bVar, boolean z2) {
        int[] iArr = bVar.f1861g;
        if (iArr[0] == -1) {
            return false;
        }
        float lineHeight = editableView.getLineHeight();
        if (lineHeight <= 0.0f) {
            return false;
        }
        int height = (int) (editableView.getHeight() / lineHeight);
        int i2 = iArr[1];
        ?? r2 = (i2 == -1 || iArr[0] == i2) ? 0 : 1;
        int iF = bVar.f(iArr[r2]);
        if (z2) {
            height = -height;
        }
        int size = iF + height;
        if (size < 0) {
            size = 0;
        }
        ArrayList arrayList = bVar.f1856b;
        if (size >= arrayList.size()) {
            size = arrayList.size() - 1;
        }
        b.d dVarD = bVar.d(size);
        if (dVarD != null) {
            return a(r2, iArr, dVarD.f1878a);
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public static boolean e(b bVar, boolean z2) {
        int[] iArr = bVar.f1861g;
        int i2 = iArr[0];
        if (i2 == -1) {
            return false;
        }
        int i3 = iArr[1];
        ?? r2 = (i3 == -1 || i2 == i3) ? 0 : 1;
        int i4 = iArr[r2];
        int iF = bVar.f(i4);
        b.d dVarD = bVar.d(iF);
        b.d dVarD2 = bVar.d(iF + (z2 ? -1 : 1));
        if (dVarD == null || dVarD2 == null) {
            return false;
        }
        int i5 = i4 - dVarD.f1878a;
        int i6 = dVarD2.f1881d;
        if (i5 >= i6) {
            i5 = i6 - ((dVarD2.f1879b & 1) != 0 ? 1 : 0);
        }
        return a(r2, iArr, dVarD2.f1878a + i5);
    }

    public static boolean f(EditableView editableView, b bVar, int i2, KeyEvent keyEvent) {
        int[] iArr;
        int i3;
        boolean zA;
        int[] iArr2;
        int i4;
        int iNormalizeMetaState = KeyEvent.normalizeMetaState((Build.VERSION.SDK_INT < 19 ? keyEvent.getMetaState() : MetaKeyKeyListener.getMetaState(bVar, keyEvent)) & (-1537)) & (-194);
        boolean zD = false;
        if (i2 != 92) {
            if (i2 != 93) {
                if (i2 != 122) {
                    if (i2 != 123) {
                        switch (i2) {
                            case 19:
                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zD = e(bVar, true);
                                }
                                break;
                            case 20:
                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zD = e(bVar, false);
                                }
                                break;
                            case 21:
                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zD = b(bVar, true);
                                } else if (!KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096) && KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 2)) {
                                    zD = c(bVar, true);
                                }
                                break;
                            case 22:
                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zD = b(bVar, false);
                                } else if (!KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096) && KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 2)) {
                                    zD = c(bVar, false);
                                }
                                break;
                            case 23:
                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) && keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                                    int[] iArr3 = bVar.f1861g;
                                    int i5 = iArr3[1];
                                    if (i5 == iArr3[0]) {
                                        i5 = -1;
                                    }
                                    if (i5 != -1) {
                                        zD = editableView.showContextMenu();
                                    }
                                }
                                break;
                        }
                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) && (i4 = (iArr2 = bVar.f1861g)[0]) != -1) {
                        int i6 = iArr2[1];
                        zA = a((i6 == -1 || i4 == i6) ? false : true, iArr2, bVar.f1857c);
                        zD = zA;
                    }
                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) && (i3 = (iArr = bVar.f1861g)[0]) != -1) {
                    int i7 = iArr[1];
                    zA = a((i7 == -1 || i3 == i7) ? false : true, iArr, 0);
                    zD = zA;
                }
            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                zD = d(editableView, bVar, false);
            }
        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
            zD = d(editableView, bVar, true);
        }
        if (zD) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(bVar);
        }
        return zD;
    }
}
