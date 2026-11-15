package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0087\b\u0018\u0000 G2\u00020\u0001:\u0002&2BÇ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018BÙ\u0001\b\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u0017\u0010\u001dJ(\u0010$\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!HÇ\u0001¢\u0006\u0004\b$\u0010%JÐ\u0001\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b*\u0010+J\u001a\u0010.\u001a\u00020-2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b.\u0010/R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b&\u00100\u001a\u0004\b1\u0010)R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b6\u00103\u001a\u0004\b7\u00105R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b8\u00103\u001a\u0004\b9\u00105R\u0017\u0010\b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b9\u00103\u001a\u0004\b:\u00105R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b;\u00103\u001a\u0004\b<\u00105R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b1\u00103\u001a\u0004\b=\u00105R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b7\u00103\u001a\u0004\b;\u00105R\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b>\u00103\u001a\u0004\b8\u00105R\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b?\u00103\u001a\u0004\b@\u00105R\u0017\u0010\u000e\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b<\u00103\u001a\u0004\bA\u00105R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b:\u00103\u001a\u0004\bB\u00105R\u0017\u0010\u0010\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b@\u00103\u001a\u0004\b6\u00105R\u0017\u0010\u0011\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bC\u00103\u001a\u0004\b>\u00105R\u0017\u0010\u0012\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bD\u00103\u001a\u0004\bD\u00105R\u0017\u0010\u0013\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bB\u00103\u001a\u0004\b?\u00105R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bE\u00103\u001a\u0004\bC\u00105R\u0017\u0010\u0015\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bA\u00103\u001a\u0004\bF\u00105R\u0017\u0010\u0016\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b4\u00103\u001a\u0004\bE\u00105¨\u0006H"}, d2 = {"Lddc;", "", "", TtmlNode.ATTR_ID, "Lrd8;", "text", "image", "gifImage", "overlapContainer", "linearContainer", "wrapContainer", "grid", "gallery", "pager", "tab", ICode.CALL.CALL_KEY_STATE, "custom", "indicator", "slider", "input", "select", "video", ClientABTestDTOKt.SWITCH, MethodDecl.initName, "(Ljava/lang/String;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;)V", "", "seen1", "Lmd9;", "serializationConstructorMarker", "(ILjava/lang/String;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lmd9;)V", "self", "Lid1;", "output", "Lkotlinx/serialization/descriptors/a;", "serialDesc", "Lzfb;", "v", "(Lddc;Lid1;Lkotlinx/serialization/descriptors/a;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;)Lddc;", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", GslbInterceptor.HEADER_KEY_GSLB, "b", "Lrd8;", "s", "()Lrd8;", "c", CmcdData.STREAMING_FORMAT_HLS, "d", "e", CmcdData.STREAM_TYPE_LIVE, "f", "k", "u", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "j", CmcdData.OBJECT_TYPE_MANIFEST, "r", TtmlNode.TAG_P, "n", "o", "q", "t", "Companion", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9
public final class ViewPreCreationProfile {

    public static final Companion INSTANCE = new Companion(null);

    public final String id;

    public final PreCreationModel text;

    public final PreCreationModel image;

    public final PreCreationModel gifImage;

    public final PreCreationModel overlapContainer;

    public final PreCreationModel linearContainer;

    public final PreCreationModel wrapContainer;

    public final PreCreationModel grid;

    public final PreCreationModel gallery;

    public final PreCreationModel pager;

    public final PreCreationModel tab;

    public final PreCreationModel state;

    public final PreCreationModel custom;

    public final PreCreationModel indicator;

    public final PreCreationModel slider;

    public final PreCreationModel input;

    public final PreCreationModel select;

    public final PreCreationModel video;

    public final PreCreationModel switch;

    public static final class a implements od4 {
        public static final a a;
        public static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.div.internal.viewpool.ViewPreCreationProfile", aVar, 19);
            pluginGeneratedSerialDescriptor.k(TtmlNode.ATTR_ID, true);
            pluginGeneratedSerialDescriptor.k("text", true);
            pluginGeneratedSerialDescriptor.k("image", true);
            pluginGeneratedSerialDescriptor.k("gifImage", true);
            pluginGeneratedSerialDescriptor.k("overlapContainer", true);
            pluginGeneratedSerialDescriptor.k("linearContainer", true);
            pluginGeneratedSerialDescriptor.k("wrapContainer", true);
            pluginGeneratedSerialDescriptor.k("grid", true);
            pluginGeneratedSerialDescriptor.k("gallery", true);
            pluginGeneratedSerialDescriptor.k("pager", true);
            pluginGeneratedSerialDescriptor.k("tab", true);
            pluginGeneratedSerialDescriptor.k(ICode.CALL.CALL_KEY_STATE, true);
            pluginGeneratedSerialDescriptor.k("custom", true);
            pluginGeneratedSerialDescriptor.k("indicator", true);
            pluginGeneratedSerialDescriptor.k("slider", true);
            pluginGeneratedSerialDescriptor.k("input", true);
            pluginGeneratedSerialDescriptor.k("select", true);
            pluginGeneratedSerialDescriptor.k("video", true);
            pluginGeneratedSerialDescriptor.k(ClientABTestDTOKt.SWITCH, true);
            b = pluginGeneratedSerialDescriptor;
        }

        @Override
        public ViewPreCreationProfile deserialize(hu1 hu1Var) {
            Object objA;
            Object objA2;
            Object obj;
            int i;
            Object objA3;
            Object objA4;
            Object objA5;
            Object obj2;
            Object objA6;
            Object obj3;
            Object objA7;
            Object objA8;
            Object objA9;
            Object objA10;
            Object objA11;
            Object obj4;
            Object objA12;
            Object objA13;
            Object objA14;
            Object objA15;
            y45.j(hu1Var, "decoder");
            kotlinx.serialization.descriptors.a descriptor = getDescriptor();
            fd1 fd1VarB = hu1Var.b(descriptor);
            if (fd1VarB.j()) {
                Object objR = fd1VarB.r(descriptor, 0, c0a.a, null);
                PreCreationModel.a aVar = PreCreationModel.a.a;
                Object objA16 = fd1VarB.A(descriptor, 1, aVar, null);
                objA10 = fd1VarB.A(descriptor, 2, aVar, null);
                Object objA17 = fd1VarB.A(descriptor, 3, aVar, null);
                Object objA18 = fd1VarB.A(descriptor, 4, aVar, null);
                objA11 = fd1VarB.A(descriptor, 5, aVar, null);
                objA9 = fd1VarB.A(descriptor, 6, aVar, null);
                objA8 = fd1VarB.A(descriptor, 7, aVar, null);
                objA7 = fd1VarB.A(descriptor, 8, aVar, null);
                objA6 = fd1VarB.A(descriptor, 9, aVar, null);
                objA5 = fd1VarB.A(descriptor, 10, aVar, null);
                objA4 = fd1VarB.A(descriptor, 11, aVar, null);
                objA3 = fd1VarB.A(descriptor, 12, aVar, null);
                objA15 = fd1VarB.A(descriptor, 13, aVar, null);
                objA14 = fd1VarB.A(descriptor, 14, aVar, null);
                objA13 = fd1VarB.A(descriptor, 15, aVar, null);
                objA12 = fd1VarB.A(descriptor, 16, aVar, null);
                Object objA19 = fd1VarB.A(descriptor, 17, aVar, null);
                objA2 = fd1VarB.A(descriptor, 18, aVar, null);
                i = 524287;
                obj3 = objA17;
                obj2 = objA16;
                objA = objA18;
                obj4 = objA19;
                obj = objR;
            } else {
                boolean z = true;
                Object objA20 = null;
                Object objA21 = null;
                Object objA22 = null;
                Object objA23 = null;
                Object objA24 = null;
                Object objA25 = null;
                Object objA26 = null;
                Object objA27 = null;
                Object objA28 = null;
                Object objA29 = null;
                objA = null;
                Object objR2 = null;
                Object objA30 = null;
                Object objA31 = null;
                Object objA32 = null;
                Object objA33 = null;
                Object objA34 = null;
                Object objA35 = null;
                int i2 = 0;
                Object objA36 = null;
                while (z) {
                    int iV = fd1VarB.v(descriptor);
                    switch (iV) {
                        case -1:
                            objA34 = objA34;
                            z = false;
                            objA20 = objA20;
                            objR2 = objR2;
                            objA36 = objA36;
                            objA34 = objA34;
                            break;
                        case 0:
                            i2 |= 1;
                            objA20 = objA20;
                            objA35 = objA35;
                            objA36 = objA36;
                            objR2 = fd1VarB.r(descriptor, 0, c0a.a, objR2);
                            objA34 = objA34;
                            break;
                        case 1:
                            objA35 = fd1VarB.A(descriptor, 1, PreCreationModel.a.a, objA35);
                            i2 |= 2;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 2:
                            objA20 = fd1VarB.A(descriptor, 2, PreCreationModel.a.a, objA20);
                            i2 |= 4;
                            objA30 = objA30;
                            objA34 = objA34;
                            break;
                        case 3:
                            objA34 = objA34;
                            objA23 = fd1VarB.A(descriptor, 3, PreCreationModel.a.a, objA23);
                            i2 |= 8;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 4:
                            objA34 = objA34;
                            objA = fd1VarB.A(descriptor, 4, PreCreationModel.a.a, objA);
                            i2 |= 16;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 5:
                            objA34 = objA34;
                            objA21 = fd1VarB.A(descriptor, 5, PreCreationModel.a.a, objA21);
                            i2 |= 32;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 6:
                            objA34 = objA34;
                            objA29 = fd1VarB.A(descriptor, 6, PreCreationModel.a.a, objA29);
                            i2 |= 64;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 7:
                            objA34 = objA34;
                            objA28 = fd1VarB.A(descriptor, 7, PreCreationModel.a.a, objA28);
                            i2 |= 128;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 8:
                            objA34 = objA34;
                            objA27 = fd1VarB.A(descriptor, 8, PreCreationModel.a.a, objA27);
                            i2 |= 256;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 9:
                            objA34 = objA34;
                            objA22 = fd1VarB.A(descriptor, 9, PreCreationModel.a.a, objA22);
                            i2 |= 512;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 10:
                            objA34 = objA34;
                            objA26 = fd1VarB.A(descriptor, 10, PreCreationModel.a.a, objA26);
                            i2 |= 1024;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 11:
                            objA34 = objA34;
                            objA25 = fd1VarB.A(descriptor, 11, PreCreationModel.a.a, objA25);
                            i2 |= 2048;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 12:
                            objA34 = objA34;
                            objA24 = fd1VarB.A(descriptor, 12, PreCreationModel.a.a, objA24);
                            i2 |= 4096;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 13:
                            objA34 = objA34;
                            objA30 = fd1VarB.A(descriptor, 13, PreCreationModel.a.a, objA30);
                            i2 |= 8192;
                            objA31 = objA31;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 14:
                            objA34 = objA34;
                            objA31 = fd1VarB.A(descriptor, 14, PreCreationModel.a.a, objA31);
                            i2 |= 16384;
                            objA32 = objA32;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 15:
                            objA34 = objA34;
                            objA32 = fd1VarB.A(descriptor, 15, PreCreationModel.a.a, objA32);
                            i2 |= 32768;
                            objA33 = objA33;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 16:
                            objA34 = objA34;
                            objA33 = fd1VarB.A(descriptor, 16, PreCreationModel.a.a, objA33);
                            i2 |= 65536;
                            objA20 = objA20;
                            objA34 = objA34;
                            break;
                        case 17:
                            i2 |= 131072;
                            objA36 = objA36;
                            objA34 = fd1VarB.A(descriptor, 17, PreCreationModel.a.a, objA34);
                            objA20 = objA20;
                            break;
                        case 18:
                            objA36 = fd1VarB.A(descriptor, 18, PreCreationModel.a.a, objA36);
                            i2 |= 262144;
                            objA20 = objA20;
                            break;
                        default:
                            throw new UnknownFieldException(iV);
                    }
                }
                Object obj5 = objA20;
                Object obj6 = objA34;
                objA2 = objA36;
                obj = objR2;
                i = i2;
                objA3 = objA24;
                objA4 = objA25;
                objA5 = objA26;
                obj2 = objA35;
                objA6 = objA22;
                obj3 = objA23;
                objA7 = objA27;
                objA8 = objA28;
                objA9 = objA29;
                objA10 = obj5;
                objA11 = objA21;
                obj4 = obj6;
                objA12 = objA33;
                objA13 = objA32;
                objA14 = objA31;
                objA15 = objA30;
            }
            fd1VarB.c(descriptor);
            return new ViewPreCreationProfile(i, (String) obj, (PreCreationModel) obj2, (PreCreationModel) objA10, (PreCreationModel) obj3, (PreCreationModel) objA, (PreCreationModel) objA11, (PreCreationModel) objA9, (PreCreationModel) objA8, (PreCreationModel) objA7, (PreCreationModel) objA6, (PreCreationModel) objA5, (PreCreationModel) objA4, (PreCreationModel) objA3, (PreCreationModel) objA15, (PreCreationModel) objA14, (PreCreationModel) objA13, (PreCreationModel) objA12, (PreCreationModel) obj4, (PreCreationModel) objA2, (md9) null);
        }

        @Override
        public void serialize(ca3 ca3Var, ViewPreCreationProfile viewPreCreationProfile) {
            y45.j(ca3Var, "encoder");
            y45.j(viewPreCreationProfile, ES6Iterator.VALUE_PROPERTY);
            kotlinx.serialization.descriptors.a descriptor = getDescriptor();
            id1 id1VarB = ca3Var.b(descriptor);
            ViewPreCreationProfile.v(viewPreCreationProfile, id1VarB, descriptor);
            id1VarB.c(descriptor);
        }

        @Override
        public ef5[] childSerializers() {
            PreCreationModel.a aVar = PreCreationModel.a.a;
            return new ef5[]{qn0.t(c0a.a), aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar, aVar};
        }

        @Override
        public kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public ef5[] typeParametersSerializers() {
            return od4.a.a(this);
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return a.a;
        }

        public Companion() {
        }
    }

    public ViewPreCreationProfile() {
        this((String) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, (PreCreationModel) null, 524287, (DefaultConstructorMarker) null);
    }

    public static final void v(ViewPreCreationProfile self, id1 output, kotlinx.serialization.descriptors.a serialDesc) {
        if (output.r(serialDesc, 0) || self.id != null) {
            output.h(serialDesc, 0, c0a.a, self.id);
        }
        if (output.r(serialDesc, 1) || !y45.e(self.text, new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 1, PreCreationModel.a.a, self.text);
        }
        if (output.r(serialDesc, 2) || !y45.e(self.image, new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 2, PreCreationModel.a.a, self.image);
        }
        if (output.r(serialDesc, 3) || !y45.e(self.gifImage, new PreCreationModel(3, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 3, PreCreationModel.a.a, self.gifImage);
        }
        if (output.r(serialDesc, 4) || !y45.e(self.overlapContainer, new PreCreationModel(8, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 4, PreCreationModel.a.a, self.overlapContainer);
        }
        if (output.r(serialDesc, 5) || !y45.e(self.linearContainer, new PreCreationModel(12, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 5, PreCreationModel.a.a, self.linearContainer);
        }
        if (output.r(serialDesc, 6) || !y45.e(self.wrapContainer, new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 6, PreCreationModel.a.a, self.wrapContainer);
        }
        if (output.r(serialDesc, 7) || !y45.e(self.grid, new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 7, PreCreationModel.a.a, self.grid);
        }
        if (output.r(serialDesc, 8) || !y45.e(self.gallery, new PreCreationModel(6, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 8, PreCreationModel.a.a, self.gallery);
        }
        if (output.r(serialDesc, 9) || !y45.e(self.pager, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 9, PreCreationModel.a.a, self.pager);
        }
        if (output.r(serialDesc, 10) || !y45.e(self.tab, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 10, PreCreationModel.a.a, self.tab);
        }
        if (output.r(serialDesc, 11) || !y45.e(self.state, new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 11, PreCreationModel.a.a, self.state);
        }
        if (output.r(serialDesc, 12) || !y45.e(self.custom, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 12, PreCreationModel.a.a, self.custom);
        }
        if (output.r(serialDesc, 13) || !y45.e(self.indicator, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 13, PreCreationModel.a.a, self.indicator);
        }
        if (output.r(serialDesc, 14) || !y45.e(self.slider, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 14, PreCreationModel.a.a, self.slider);
        }
        if (output.r(serialDesc, 15) || !y45.e(self.input, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 15, PreCreationModel.a.a, self.input);
        }
        if (output.r(serialDesc, 16) || !y45.e(self.select, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 16, PreCreationModel.a.a, self.select);
        }
        if (output.r(serialDesc, 17) || !y45.e(self.video, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            output.q(serialDesc, 17, PreCreationModel.a.a, self.video);
        }
        if (!output.r(serialDesc, 18) && y45.e(self.switch, new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null))) {
            return;
        }
        output.q(serialDesc, 18, PreCreationModel.a.a, self.switch);
    }

    public final ViewPreCreationProfile a(String id, PreCreationModel text, PreCreationModel image, PreCreationModel gifImage, PreCreationModel overlapContainer, PreCreationModel linearContainer, PreCreationModel wrapContainer, PreCreationModel grid, PreCreationModel gallery, PreCreationModel pager, PreCreationModel tab, PreCreationModel state, PreCreationModel custom, PreCreationModel indicator, PreCreationModel slider, PreCreationModel input, PreCreationModel select, PreCreationModel video, PreCreationModel preCreationModel) {
        y45.j(text, "text");
        y45.j(image, "image");
        y45.j(gifImage, "gifImage");
        y45.j(overlapContainer, "overlapContainer");
        y45.j(linearContainer, "linearContainer");
        y45.j(wrapContainer, "wrapContainer");
        y45.j(grid, "grid");
        y45.j(gallery, "gallery");
        y45.j(pager, "pager");
        y45.j(tab, "tab");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(custom, "custom");
        y45.j(indicator, "indicator");
        y45.j(slider, "slider");
        y45.j(input, "input");
        y45.j(select, "select");
        y45.j(video, "video");
        y45.j(preCreationModel, ClientABTestDTOKt.SWITCH);
        return new ViewPreCreationProfile(id, text, image, gifImage, overlapContainer, linearContainer, wrapContainer, grid, gallery, pager, tab, state, custom, indicator, slider, input, select, video, preCreationModel);
    }

    public final PreCreationModel getCustom() {
        return this.custom;
    }

    public final PreCreationModel getGallery() {
        return this.gallery;
    }

    public final PreCreationModel getGifImage() {
        return this.gifImage;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ViewPreCreationProfile)) {
            return false;
        }
        ViewPreCreationProfile viewPreCreationProfile = (ViewPreCreationProfile) other;
        return y45.e(this.id, viewPreCreationProfile.id) && y45.e(this.text, viewPreCreationProfile.text) && y45.e(this.image, viewPreCreationProfile.image) && y45.e(this.gifImage, viewPreCreationProfile.gifImage) && y45.e(this.overlapContainer, viewPreCreationProfile.overlapContainer) && y45.e(this.linearContainer, viewPreCreationProfile.linearContainer) && y45.e(this.wrapContainer, viewPreCreationProfile.wrapContainer) && y45.e(this.grid, viewPreCreationProfile.grid) && y45.e(this.gallery, viewPreCreationProfile.gallery) && y45.e(this.pager, viewPreCreationProfile.pager) && y45.e(this.tab, viewPreCreationProfile.tab) && y45.e(this.state, viewPreCreationProfile.state) && y45.e(this.custom, viewPreCreationProfile.custom) && y45.e(this.indicator, viewPreCreationProfile.indicator) && y45.e(this.slider, viewPreCreationProfile.slider) && y45.e(this.input, viewPreCreationProfile.input) && y45.e(this.select, viewPreCreationProfile.select) && y45.e(this.video, viewPreCreationProfile.video) && y45.e(this.switch, viewPreCreationProfile.switch);
    }

    public final PreCreationModel getGrid() {
        return this.grid;
    }

    public final String getId() {
        return this.id;
    }

    public final PreCreationModel getImage() {
        return this.image;
    }

    public int hashCode() {
        String str = this.id;
        return ((((((((((((((((((((((((((((((((((((str == null ? 0 : str.hashCode()) * 31) + this.text.hashCode()) * 31) + this.image.hashCode()) * 31) + this.gifImage.hashCode()) * 31) + this.overlapContainer.hashCode()) * 31) + this.linearContainer.hashCode()) * 31) + this.wrapContainer.hashCode()) * 31) + this.grid.hashCode()) * 31) + this.gallery.hashCode()) * 31) + this.pager.hashCode()) * 31) + this.tab.hashCode()) * 31) + this.state.hashCode()) * 31) + this.custom.hashCode()) * 31) + this.indicator.hashCode()) * 31) + this.slider.hashCode()) * 31) + this.input.hashCode()) * 31) + this.select.hashCode()) * 31) + this.video.hashCode()) * 31) + this.switch.hashCode();
    }

    public final PreCreationModel getIndicator() {
        return this.indicator;
    }

    public final PreCreationModel getInput() {
        return this.input;
    }

    public final PreCreationModel getLinearContainer() {
        return this.linearContainer;
    }

    public final PreCreationModel getOverlapContainer() {
        return this.overlapContainer;
    }

    public final PreCreationModel getPager() {
        return this.pager;
    }

    public final PreCreationModel getSelect() {
        return this.select;
    }

    public final PreCreationModel getSlider() {
        return this.slider;
    }

    public final PreCreationModel getState() {
        return this.state;
    }

    public final PreCreationModel getSwitch() {
        return this.switch;
    }

    public final PreCreationModel getTab() {
        return this.tab;
    }

    public final PreCreationModel getText() {
        return this.text;
    }

    public final PreCreationModel getVideo() {
        return this.video;
    }

    public String toString() {
        return "ViewPreCreationProfile(id=" + this.id + ", text=" + this.text + ", image=" + this.image + ", gifImage=" + this.gifImage + ", overlapContainer=" + this.overlapContainer + ", linearContainer=" + this.linearContainer + ", wrapContainer=" + this.wrapContainer + ", grid=" + this.grid + ", gallery=" + this.gallery + ", pager=" + this.pager + ", tab=" + this.tab + ", state=" + this.state + ", custom=" + this.custom + ", indicator=" + this.indicator + ", slider=" + this.slider + ", input=" + this.input + ", select=" + this.select + ", video=" + this.video + ", switch=" + this.switch + ')';
    }

    public final PreCreationModel getWrapContainer() {
        return this.wrapContainer;
    }

    public ViewPreCreationProfile(int i, String str, PreCreationModel preCreationModel, PreCreationModel preCreationModel2, PreCreationModel preCreationModel3, PreCreationModel preCreationModel4, PreCreationModel preCreationModel5, PreCreationModel preCreationModel6, PreCreationModel preCreationModel7, PreCreationModel preCreationModel8, PreCreationModel preCreationModel9, PreCreationModel preCreationModel10, PreCreationModel preCreationModel11, PreCreationModel preCreationModel12, PreCreationModel preCreationModel13, PreCreationModel preCreationModel14, PreCreationModel preCreationModel15, PreCreationModel preCreationModel16, PreCreationModel preCreationModel17, PreCreationModel preCreationModel18, md9 md9Var) {
        this.id = (i & 1) == 0 ? null : str;
        this.text = (i & 2) == 0 ? new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel;
        this.image = (i & 4) == 0 ? new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel2;
        this.gifImage = (i & 8) == 0 ? new PreCreationModel(3, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel3;
        this.overlapContainer = (i & 16) == 0 ? new PreCreationModel(8, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel4;
        this.linearContainer = (i & 32) == 0 ? new PreCreationModel(12, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel5;
        this.wrapContainer = (i & 64) == 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel6;
        this.grid = (i & 128) == 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel7;
        this.gallery = (i & 256) == 0 ? new PreCreationModel(6, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel8;
        this.pager = (i & 512) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel9;
        this.tab = (i & 1024) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel10;
        this.state = (i & 2048) == 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel11;
        this.custom = (i & 4096) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel12;
        this.indicator = (i & 8192) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel13;
        this.slider = (i & 16384) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel14;
        this.input = (32768 & i) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel15;
        this.select = (65536 & i) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel16;
        this.video = (131072 & i) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel17;
        this.switch = (i & 262144) == 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel18;
    }

    public ViewPreCreationProfile(String str, PreCreationModel preCreationModel, PreCreationModel preCreationModel2, PreCreationModel preCreationModel3, PreCreationModel preCreationModel4, PreCreationModel preCreationModel5, PreCreationModel preCreationModel6, PreCreationModel preCreationModel7, PreCreationModel preCreationModel8, PreCreationModel preCreationModel9, PreCreationModel preCreationModel10, PreCreationModel preCreationModel11, PreCreationModel preCreationModel12, PreCreationModel preCreationModel13, PreCreationModel preCreationModel14, PreCreationModel preCreationModel15, PreCreationModel preCreationModel16, PreCreationModel preCreationModel17, PreCreationModel preCreationModel18) {
        y45.j(preCreationModel, "text");
        y45.j(preCreationModel2, "image");
        y45.j(preCreationModel3, "gifImage");
        y45.j(preCreationModel4, "overlapContainer");
        y45.j(preCreationModel5, "linearContainer");
        y45.j(preCreationModel6, "wrapContainer");
        y45.j(preCreationModel7, "grid");
        y45.j(preCreationModel8, "gallery");
        y45.j(preCreationModel9, "pager");
        y45.j(preCreationModel10, "tab");
        y45.j(preCreationModel11, ICode.CALL.CALL_KEY_STATE);
        y45.j(preCreationModel12, "custom");
        y45.j(preCreationModel13, "indicator");
        y45.j(preCreationModel14, "slider");
        y45.j(preCreationModel15, "input");
        y45.j(preCreationModel16, "select");
        y45.j(preCreationModel17, "video");
        y45.j(preCreationModel18, ClientABTestDTOKt.SWITCH);
        this.id = str;
        this.text = preCreationModel;
        this.image = preCreationModel2;
        this.gifImage = preCreationModel3;
        this.overlapContainer = preCreationModel4;
        this.linearContainer = preCreationModel5;
        this.wrapContainer = preCreationModel6;
        this.grid = preCreationModel7;
        this.gallery = preCreationModel8;
        this.pager = preCreationModel9;
        this.tab = preCreationModel10;
        this.state = preCreationModel11;
        this.custom = preCreationModel12;
        this.indicator = preCreationModel13;
        this.slider = preCreationModel14;
        this.input = preCreationModel15;
        this.select = preCreationModel16;
        this.video = preCreationModel17;
        this.switch = preCreationModel18;
    }

    public ViewPreCreationProfile(String str, PreCreationModel preCreationModel, PreCreationModel preCreationModel2, PreCreationModel preCreationModel3, PreCreationModel preCreationModel4, PreCreationModel preCreationModel5, PreCreationModel preCreationModel6, PreCreationModel preCreationModel7, PreCreationModel preCreationModel8, PreCreationModel preCreationModel9, PreCreationModel preCreationModel10, PreCreationModel preCreationModel11, PreCreationModel preCreationModel12, PreCreationModel preCreationModel13, PreCreationModel preCreationModel14, PreCreationModel preCreationModel15, PreCreationModel preCreationModel16, PreCreationModel preCreationModel17, PreCreationModel preCreationModel18, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel, (i & 4) != 0 ? new PreCreationModel(20, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel2, (i & 8) != 0 ? new PreCreationModel(3, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel3, (i & 16) != 0 ? new PreCreationModel(8, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel4, (i & 32) != 0 ? new PreCreationModel(12, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel5, (i & 64) != 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel6, (i & 128) != 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel7, (i & 256) != 0 ? new PreCreationModel(6, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel8, (i & 512) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel9, (i & 1024) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel10, (i & 2048) != 0 ? new PreCreationModel(4, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel11, (i & 4096) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel12, (i & 8192) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel13, (i & 16384) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel14, (i & 32768) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel15, (i & 65536) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel16, (i & 131072) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel17, (i & 262144) != 0 ? new PreCreationModel(2, 0, 0, 6, (DefaultConstructorMarker) null) : preCreationModel18);
    }
}
