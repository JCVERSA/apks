package c5;

import b5.b2;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.awt.Color;
import java.awt.Font;
import java.awt.Point;
import java.awt.Rectangle;
import java.lang.reflect.Type;

public class o implements z0, b2 {

    public static final o f16617a = new o();

    private Object i(a5.a aVar, Object obj) {
        a5.b bVarR = aVar.r();
        bVarR.r(4);
        String strO0 = bVarR.o0();
        aVar.y0(aVar.m(), obj);
        aVar.h(new a5.a.C0001a(aVar.m(), strO0));
        aVar.t0();
        aVar.D0(1);
        bVarR.f0(13);
        aVar.b(13);
        return null;
    }

    public static boolean j(Class cls) {
        return cls == Point.class || cls == Rectangle.class || cls == Font.class || cls == Color.class;
    }

    @Override
    public int b() {
        return 12;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.h0();
            return;
        }
        if (obj instanceof Point) {
            Point point = (Point) obj;
            j1Var.x(k(j1Var, Point.class, '{'), "x", point.x);
            j1Var.x(',', "y", point.y);
        } else if (obj instanceof Font) {
            Font font = (Font) obj;
            j1Var.S(k(j1Var, Font.class, '{'), "name", font.getName());
            j1Var.x(',', TtmlNode.TAG_STYLE, font.getStyle());
            j1Var.x(',', "size", font.getSize());
        } else if (obj instanceof Rectangle) {
            Rectangle rectangle = (Rectangle) obj;
            j1Var.x(k(j1Var, Rectangle.class, '{'), "x", rectangle.x);
            j1Var.x(',', "y", rectangle.y);
            j1Var.x(',', "width", rectangle.width);
            j1Var.x(',', "height", rectangle.height);
        } else {
            if (!(obj instanceof Color)) {
                throw new JSONException("not support awt class : " + obj.getClass().getName());
            }
            Color color = (Color) obj;
            j1Var.x(k(j1Var, Color.class, '{'), CampaignEx.JSON_KEY_AD_R, color.getRed());
            j1Var.x(',', "g", color.getGreen());
            j1Var.x(',', DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, color.getBlue());
            if (color.getAlpha() > 0) {
                j1Var.x(',', "alpha", color.getAlpha());
            }
        }
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Point pointF;
        a5.b bVar = aVar.f141f;
        if (bVar.t0() == 8) {
            bVar.f0(16);
            return null;
        }
        if (bVar.t0() != 12 && bVar.t0() != 16) {
            throw new JSONException("syntax error");
        }
        bVar.d0();
        if (type == Point.class) {
            pointF = g(aVar, obj);
        } else if (type == Rectangle.class) {
            pointF = h(aVar);
        } else if (type == Color.class) {
            pointF = e(aVar);
        } else {
            if (type != Font.class) {
                throw new JSONException("not support awt class : " + type);
            }
            pointF = f(aVar);
        }
        a5.g gVarM = aVar.m();
        aVar.y0(pointF, obj);
        aVar.A0(gVarM);
        return pointF;
    }

    protected Color e(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (bVar.t0() != 13) {
            if (bVar.t0() != 4) {
                throw new JSONException("syntax error");
            }
            String strO0 = bVar.o0();
            bVar.r(2);
            if (bVar.t0() != 2) {
                throw new JSONException("syntax error");
            }
            int iP = bVar.p();
            bVar.d0();
            if (strO0.equalsIgnoreCase(CampaignEx.JSON_KEY_AD_R)) {
                i10 = iP;
            } else if (strO0.equalsIgnoreCase("g")) {
                i11 = iP;
            } else if (strO0.equalsIgnoreCase(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                i12 = iP;
            } else {
                if (!strO0.equalsIgnoreCase("alpha")) {
                    throw new JSONException("syntax error, " + strO0);
                }
                i13 = iP;
            }
            if (bVar.t0() == 16) {
                bVar.f0(4);
            }
        }
        bVar.d0();
        return new Color(i10, i11, i12, i13);
    }

    protected Font f(a5.a aVar) {
        a5.b bVar = aVar.f141f;
        int iP = 0;
        String strO0 = null;
        int iP2 = 0;
        while (bVar.t0() != 13) {
            if (bVar.t0() != 4) {
                throw new JSONException("syntax error");
            }
            String strO1 = bVar.o0();
            bVar.r(2);
            if (strO1.equalsIgnoreCase("name")) {
                if (bVar.t0() != 4) {
                    throw new JSONException("syntax error");
                }
                strO0 = bVar.o0();
                bVar.d0();
            } else if (strO1.equalsIgnoreCase(TtmlNode.TAG_STYLE)) {
                if (bVar.t0() != 2) {
                    throw new JSONException("syntax error");
                }
                iP = bVar.p();
                bVar.d0();
            } else {
                if (!strO1.equalsIgnoreCase("size")) {
                    throw new JSONException("syntax error, " + strO1);
                }
                if (bVar.t0() != 2) {
                    throw new JSONException("syntax error");
                }
                iP2 = bVar.p();
                bVar.d0();
            }
            if (bVar.t0() == 16) {
                bVar.f0(4);
            }
        }
        bVar.d0();
        return new Font(strO0, iP, iP2);
    }

    protected Point g(a5.a aVar, Object obj) {
        int iS0;
        a5.b bVar = aVar.f141f;
        int i10 = 0;
        int i11 = 0;
        while (bVar.t0() != 13) {
            if (bVar.t0() != 4) {
                throw new JSONException("syntax error");
            }
            String strO0 = bVar.o0();
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strO0)) {
                aVar.d("java.awt.Point");
            } else {
                if ("$ref".equals(strO0)) {
                    return (Point) i(aVar, obj);
                }
                bVar.r(2);
                int iT0 = bVar.t0();
                if (iT0 == 2) {
                    iS0 = bVar.p();
                    bVar.d0();
                } else {
                    if (iT0 != 3) {
                        throw new JSONException("syntax error : " + bVar.x());
                    }
                    iS0 = (int) bVar.s0();
                    bVar.d0();
                }
                if (strO0.equalsIgnoreCase("x")) {
                    i10 = iS0;
                } else {
                    if (!strO0.equalsIgnoreCase("y")) {
                        throw new JSONException("syntax error, " + strO0);
                    }
                    i11 = iS0;
                }
                if (bVar.t0() == 16) {
                    bVar.f0(4);
                }
            }
        }
        bVar.d0();
        return new Point(i10, i11);
    }

    protected Rectangle h(a5.a aVar) {
        int iS0;
        a5.b bVar = aVar.f141f;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (bVar.t0() != 13) {
            if (bVar.t0() != 4) {
                throw new JSONException("syntax error");
            }
            String strO0 = bVar.o0();
            bVar.r(2);
            int iT0 = bVar.t0();
            if (iT0 == 2) {
                iS0 = bVar.p();
                bVar.d0();
            } else {
                if (iT0 != 3) {
                    throw new JSONException("syntax error");
                }
                iS0 = (int) bVar.s0();
                bVar.d0();
            }
            if (strO0.equalsIgnoreCase("x")) {
                i10 = iS0;
            } else if (strO0.equalsIgnoreCase("y")) {
                i11 = iS0;
            } else if (strO0.equalsIgnoreCase("width")) {
                i12 = iS0;
            } else {
                if (!strO0.equalsIgnoreCase("height")) {
                    throw new JSONException("syntax error, " + strO0);
                }
                i13 = iS0;
            }
            if (bVar.t0() == 16) {
                bVar.f0(4);
            }
        }
        bVar.d0();
        return new Rectangle(i10, i11, i12, i13);
    }

    protected char k(j1 j1Var, Class cls, char c10) {
        if (!j1Var.o(SerializerFeature.WriteClassName)) {
            return c10;
        }
        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        j1Var.u(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
        j1Var.o0(cls.getName());
        return ',';
    }
}
