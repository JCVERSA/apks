package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BlendMode;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import com.transsion.widgetsliquid.view.OSLiquidSearchBar;
import defpackage.bq5;
import defpackage.c74;
import defpackage.e74;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.u97;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b.\b\u0016\u0018\u0000 \u008f\u00022\u00020\u0001:\b\u0090\u0002Á\u0001\u0091\u0002Ã\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\rJM\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J3\u0010'\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\b\b\u0002\u0010%\u001a\u00020\u00172\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b'\u0010(J\u0015\u0010+\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u000b2\b\b\u0002\u0010-\u001a\u00020\u0017¢\u0006\u0004\b.\u0010\u001cJ\r\u0010/\u001a\u00020\u000b¢\u0006\u0004\b/\u00100J\u0015\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u0017¢\u0006\u0004\b2\u0010\u001cJ\r\u00103\u001a\u00020\u000b¢\u0006\u0004\b3\u00100J\u001b\u00106\u001a\u00020\u000b2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b04¢\u0006\u0004\b6\u00107J\u001b\u00108\u001a\u00020\u000b2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b04¢\u0006\u0004\b8\u00107J!\u0010;\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09¢\u0006\u0004\b;\u0010<J\u001b\u0010=\u001a\u00020\u000b2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u000b04¢\u0006\u0004\b=\u00107J!\u0010>\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09¢\u0006\u0004\b>\u0010<J!\u0010?\u001a\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b09¢\u0006\u0004\b?\u0010<J\u0015\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CJ\r\u0010E\u001a\u00020D¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\u000b2\b\u0010A\u001a\u0004\u0018\u00010@¢\u0006\u0004\bG\u0010CJ\u0017\u0010H\u001a\u00020\u000b2\b\u0010A\u001a\u0004\u0018\u00010@¢\u0006\u0004\bH\u0010CJ\r\u0010I\u001a\u00020D¢\u0006\u0004\bI\u0010FJ\r\u0010J\u001a\u00020D¢\u0006\u0004\bJ\u0010FJ\u0015\u0010L\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020@¢\u0006\u0004\bL\u0010CJ\r\u0010M\u001a\u00020@¢\u0006\u0004\bM\u0010NJ\r\u0010P\u001a\u00020O¢\u0006\u0004\bP\u0010QJ\u0015\u0010S\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020@¢\u0006\u0004\bS\u0010CJ\u000f\u0010T\u001a\u00020\u000bH\u0014¢\u0006\u0004\bT\u00100J\u000f\u0010U\u001a\u00020\u000bH\u0014¢\u0006\u0004\bU\u00100J\r\u0010V\u001a\u00020:¢\u0006\u0004\bV\u0010WJ\r\u0010X\u001a\u00020:¢\u0006\u0004\bX\u0010WJ\r\u0010Y\u001a\u00020:¢\u0006\u0004\bY\u0010WJ\r\u0010Z\u001a\u00020:¢\u0006\u0004\bZ\u0010WJ\u0017\u0010\\\u001a\u00020\u000b2\b\u0010[\u001a\u0004\u0018\u00010@¢\u0006\u0004\b\\\u0010CJ\r\u0010]\u001a\u00020\u0017¢\u0006\u0004\b]\u0010\u0019J\u0015\u0010_\u001a\u00020\u000b2\u0006\u0010^\u001a\u00020\u0017¢\u0006\u0004\b_\u0010\u001cJ\u001d\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00062\u0006\u0010a\u001a\u00020\u0006¢\u0006\u0004\bb\u0010cJ\u001f\u0010b\u001a\u00020\u000b2\u0006\u0010`\u001a\u00020\u00062\b\u0010d\u001a\u0004\u0018\u00010@¢\u0006\u0004\bb\u0010eJ\u001f\u0010h\u001a\u0004\u0018\u00010g2\u0006\u00101\u001a\u00020)2\u0006\u0010f\u001a\u00020)¢\u0006\u0004\bh\u0010iJ\u000f\u0010h\u001a\u0004\u0018\u00010g¢\u0006\u0004\bh\u0010jJ\u000f\u0010k\u001a\u0004\u0018\u00010g¢\u0006\u0004\bk\u0010jJ\u001f\u0010k\u001a\u0004\u0018\u00010g2\u0006\u00101\u001a\u00020)2\u0006\u0010f\u001a\u00020)¢\u0006\u0004\bk\u0010iJ\r\u0010m\u001a\u00020l¢\u0006\u0004\bm\u0010nJ\u0015\u0010o\u001a\u00020\u000b2\u0006\u0010o\u001a\u00020\u0017¢\u0006\u0004\bo\u0010\u001cJ\r\u0010q\u001a\u00020p¢\u0006\u0004\bq\u0010rJ\u0011\u0010t\u001a\u0004\u0018\u00010sH\u0014¢\u0006\u0004\bt\u0010uJ\u0019\u0010w\u001a\u00020\u000b2\b\u0010v\u001a\u0004\u0018\u00010sH\u0014¢\u0006\u0004\bw\u0010xJ%\u0010|\u001a\u00020\u000b*\u00020y2\b\b\u0002\u0010z\u001a\u00020\u00172\b\u0010{\u001a\u0004\u0018\u00010@¢\u0006\u0004\b|\u0010}J\u0016\u0010\u007f\u001a\u00020\u000b2\u0006\u0010~\u001a\u00020\u0000¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u001a\u0010\u0082\u0001\u001a\u00020\u000b2\u0007\u0010\u0081\u0001\u001a\u00020\u0017H\u0007¢\u0006\u0005\b\u0082\u0001\u0010\u001cJ\u001a\u0010\u0084\u0001\u001a\u00020\u000b2\u0007\u0010\u0083\u0001\u001a\u00020\u0017H\u0007¢\u0006\u0005\b\u0084\u0001\u0010\u001cJ\u0018\u0010\u0086\u0001\u001a\u00020\u000b2\u0007\u0010\u0085\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u0086\u0001\u0010\rJ\u001a\u0010\u0088\u0001\u001a\u00020\u000b2\u0007\u0010\u0087\u0001\u001a\u00020\u0017H\u0007¢\u0006\u0005\b\u0088\u0001\u0010\u001cJ\u0018\u0010\u008a\u0001\u001a\u00020\u000b2\u0007\u0010\u0089\u0001\u001a\u00020\u0017¢\u0006\u0005\b\u008a\u0001\u0010\u001cJ\u001c\u0010\u008b\u0001\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u001c\u0010\u008d\u0001\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0003¢\u0006\u0006\b\u008d\u0001\u0010\u008c\u0001J\u0011\u0010\u008e\u0001\u001a\u00020\u000bH\u0002¢\u0006\u0005\b\u008e\u0001\u00100J$\u0010\u0091\u0001\u001a\u00020D2\u0007\u0010\u008f\u0001\u001a\u00020\u00062\u0007\u0010\u0090\u0001\u001a\u00020@H\u0002¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001JH\u0010\u0097\u0001\u001a\u00020y2\u0007\u0010\u008f\u0001\u001a\u00020\u00062\u0007\u0010\u0093\u0001\u001a\u00020\u00062\u0007\u0010\u0090\u0001\u001a\u00020@2\u0007\u0010\u0094\u0001\u001a\u00020\u00062\u0007\u0010\u0095\u0001\u001a\u00020\u00062\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u0013\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009e\u0001\u001a\u00020:2\b\u0010\u009d\u0001\u001a\u00030\u009c\u0001H\u0002¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\u0012\u0010 \u0001\u001a\u00020yH\u0002¢\u0006\u0006\b \u0001\u0010¡\u0001J\u0019\u0010¢\u0001\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0006H\u0003¢\u0006\u0005\b¢\u0001\u0010\rJ\u001a\u0010¤\u0001\u001a\u00020\u000b2\u0007\u0010£\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0005\b¤\u0001\u0010\u001cJ\u0011\u0010¥\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b¥\u0001\u0010\"J\u0011\u0010¦\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b¦\u0001\u0010\"J\u0011\u0010§\u0001\u001a\u00020\u000bH\u0002¢\u0006\u0005\b§\u0001\u00100J\u0011\u0010¨\u0001\u001a\u00020\u000bH\u0002¢\u0006\u0005\b¨\u0001\u00100J\u0011\u0010©\u0001\u001a\u00020\u000bH\u0002¢\u0006\u0005\b©\u0001\u00100J\u001f\u0010«\u0001\u001a\u00020\u000b2\u000b\b\u0002\u0010ª\u0001\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0005\b\u00ad\u0001\u0010\u0019J\u0011\u0010®\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0005\b®\u0001\u0010\u0019J\u001c\u0010°\u0001\u001a\u00020\u000b2\t\b\u0002\u0010¯\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0005\b°\u0001\u0010\u001cJ\u0011\u0010±\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b±\u0001\u0010\"J\u0011\u0010²\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b²\u0001\u0010\"J\u0011\u0010³\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b³\u0001\u0010\"J\u0011\u0010´\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b´\u0001\u0010\"J\u0011\u0010µ\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\bµ\u0001\u0010\"J\u0011\u0010¶\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b¶\u0001\u0010\"J\u001d\u0010·\u0001\u001a\u00020\u00062\t\b\u0002\u0010¯\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0006\b·\u0001\u0010¸\u0001J\u001d\u0010¹\u0001\u001a\u00020\u00062\t\b\u0002\u0010¯\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0006\b¹\u0001\u0010¸\u0001J\u0011\u0010º\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\bº\u0001\u0010\"J\u0011\u0010»\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\b»\u0001\u0010\"J\u0011\u0010¼\u0001\u001a\u00020\u000bH\u0002¢\u0006\u0005\b¼\u0001\u00100J\u001b\u0010¾\u0001\u001a\u00020\u000b2\u0007\u0010½\u0001\u001a\u00020:H\u0002¢\u0006\u0006\b¾\u0001\u0010¿\u0001J\u001b\u0010À\u0001\u001a\u00020\u000b2\u0007\u0010½\u0001\u001a\u00020:H\u0002¢\u0006\u0006\bÀ\u0001\u0010¿\u0001R\u0019\u0010Â\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010¨\u0001R\u0019\u0010Ä\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¨\u0001R\u0018\u0010È\u0001\u001a\u00030Å\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R\u001a\u0010Ë\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R\u0019\u0010Í\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010¨\u0001R\u001f\u0010Ñ\u0001\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÎ\u0001\u0010Ï\u0001\u001a\u0005\bÐ\u0001\u0010FR\u001f\u0010Ô\u0001\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÒ\u0001\u0010Ï\u0001\u001a\u0005\bÓ\u0001\u0010FR \u0010×\u0001\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÕ\u0001\u0010Ï\u0001\u001a\u0006\bÖ\u0001\u0010¡\u0001R\u001f\u0010Ú\u0001\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bØ\u0001\u0010Ï\u0001\u001a\u0005\bÙ\u0001\u0010FR \u0010Ý\u0001\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÛ\u0001\u0010Ï\u0001\u001a\u0006\bÜ\u0001\u0010¡\u0001R\u001f\u0010à\u0001\u001a\u00020p8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÞ\u0001\u0010Ï\u0001\u001a\u0005\bß\u0001\u0010rR \u0010ã\u0001\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bá\u0001\u0010Ï\u0001\u001a\u0006\bâ\u0001\u0010¡\u0001R\u001c\u0010ç\u0001\u001a\u0005\u0018\u00010ä\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u001b\u0010ê\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u001b\u0010ì\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010é\u0001R\u0019\u0010î\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010¨\u0001R\u001b\u0010ð\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010ï\u0001R\u001b\u0010ñ\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010ï\u0001R\u001b\u0010ò\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010ï\u0001R\u001a\u0010{\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010ï\u0001R\u001b\u0010ó\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010ï\u0001R\u0019\u0010ô\u0001\u001a\u00020@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010ï\u0001R\u001b\u0010õ\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010ï\u0001R\u0019\u0010ö\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010¨\u0001R\u0019\u0010ø\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010÷\u0001R\u0019\u0010ú\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010¨\u0001R\u0017\u0010ü\u0001\u001a\u00020\u00068\u0002X\u0082D¢\u0006\b\n\u0006\bû\u0001\u0010÷\u0001R\u0019\u0010þ\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bý\u0001\u0010÷\u0001R\u0019\u0010\u0080\u0002\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010¨\u0001R\u0019\u0010\u0081\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¹\u0001R\u0019\u0010\u0082\u0002\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010¨\u0001R!\u0010\u0085\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010\u0084\u0002R!\u0010\u0086\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010\u0084\u0002R'\u0010\u0088\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010\u0087\u0002R'\u0010\u008a\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0002\u0010\u0087\u0002R'\u0010\u008c\u0002\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u000b\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010\u0087\u0002R!\u0010\u008e\u0002\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010\u0084\u0002¨\u0006\u0092\u0002"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mixLevel", "Lzfb;", "setMixLevel", "(I)V", "color1", "Landroid/graphics/BlendMode;", "blendMode1", "color2", "blendMode2", "color3", "blendMode3", "setCustomMix", "(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V", "", "getRightOutIconsVisiable", "()Z", "isRightIconVisible", "setRightOutIconsVisiable", "(Z)V", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "config", "setLightTypeConfig", "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V", "getSearchBarState", "()I", "fromState", "toState", "animation", "scaleHeight", "setSearchBarState", "(IIZLjava/lang/Boolean;)V", "", "imeHeight", "setImeHeight", "(F)V", "isBackIconVisible", "goSearchStateForCompose", "exitSearchStateCompose", "()V", "scale", "scaleButtonMode", "hideKeyboard", "Lkotlin/Function0;", "listener", "setOnRightIconClickListener", "(Lc74;)V", "setOnRightIcon2ClickListener", "Lkotlin/Function1;", "Landroid/view/View;", "setOnSearchBarListener", "(Le74;)V", "setOnBackClickListener", "setOnSearchButtonModeClickListener", "setOnSearchBarInnerRightIconClickListener", "", "drawable", "setLeftIcon", "(Ljava/lang/String;)V", "Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "getLeftIconView", "()Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "setRightIcon", "setRightIcon2", "getRightIconView", "getRightIcon2View", "hint", "setHint", "getText", "()Ljava/lang/String;", "Landroid/widget/AutoCompleteTextView;", "getEditTextView", "()Landroid/widget/AutoCompleteTextView;", "text", "setText", "onAttachedToWindow", "onDetachedFromWindow", "getDeleteButton", "()Landroid/view/View;", "getInnerRightIconView", "getBackView", "getSearchIconView", "iconRes", "setInnerRightIconRes", "isOnSearch", "elegant", "setTextHeightElegant", "max", "resId", "setInputMax", "(II)V", "resStr", "(ILjava/lang/String;)V", TypedValues.CycleType.S_WAVE_OFFSET, "Ljv9;", "startSearchForTransition", "(FF)Ljv9;", "()Ljv9;", "endSearchForTransition", "Landroid/widget/EditText;", "getEditText", "()Landroid/widget/EditText;", "requireSearchAnimManagerTrans", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "getEditTextContainer", "()Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "isCloseIcon", "innerRightIconRes", "changeIcon", "(Lcom/transsion/widgetslib/widget/OSIconTextView;ZLjava/lang/String;)V", "osLiquidSearchBar", "copyScale", "(Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar;)V", "nightMode", "setBlurNightMode", "forceBCEffect", "setForceBCEffect", "bcColor", "setDefaultBgColor", "forceBc", "setForceSATransEffect", "clickable", "enableEditTextClick", "O", "(Landroid/util/AttributeSet;)V", "P", "v", TtmlNode.ATTR_ID, "iconText", "u", "(ILjava/lang/String;)Lcom/transsion/widgetsliquid/view/OSLiquidButton;", PlayAudioData.TAG_SIZE, "textColor", "textSize", "visibleState", "t", "(IILjava/lang/String;III)Lcom/transsion/widgetslib/widget/OSIconTextView;", "Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;", "s", "()Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;", "Landroid/view/ViewGroup;", "parent", "w", "(Landroid/view/ViewGroup;)Landroid/view/View;", "r", "()Lcom/transsion/widgetslib/widget/OSIconTextView;", "y", "showShadow", "setShadowShow", "getButtonModeHeight", "getSearchModeHeight", ExifInterface.LONGITUDE_WEST, "Z", ExifInterface.LATITUDE_SOUTH, "isScaleHeight", "H", "(Ljava/lang/Boolean;)V", "N", "M", "isEntrance", "z", "getOutIconSize", "getLeftIconWidth", "getRightIconWidth", "getRightSingleIconWidth", "getRightIcon2Width", "getEditeTotalMarginStart", ExifInterface.LONGITUDE_EAST, "(Z)I", "F", "getEditeDefaultMarginStart", "getEditeDefaultMarginEnd", "x", "hostView", "a0", "(Landroid/view/View;)V", "b0", "b", "mHaveRightIcon", "c", "mIsRightOutIconsVisiable", "Lu97;", "d", "Lu97;", "liquidPressHelper", "e", "Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;", "searchEditText", "f", "mDuringShareAnim", GslbInterceptor.HEADER_KEY_GSLB, "Lyi5;", "getLeftIcon", "leftIcon", CmcdData.STREAMING_FORMAT_HLS, "getRightIcon", "rightIcon", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "getButtonMode", "buttonMode", "j", "getRightIcon2", "rightIcon2", "k", "getInnerRightIcon", "innerRightIcon", CmcdData.STREAM_TYPE_LIVE, "getEditeTextContainer", "editeTextContainer", CmcdData.OBJECT_TYPE_MANIFEST, "getInnerLeftIcon", "innerLeftIcon", "Landroid/text/TextWatcher;", "n", "Landroid/text/TextWatcher;", "mTextWatcher", "o", "Ljv9;", "expandAnimator", TtmlNode.TAG_P, "composeExitAnimator", "q", "keyboardShowPostPending", "Ljava/lang/String;", "leftIconRes", "rightIconRes", "rightIconRes2", "innerLeftIconRes", "hintText", "buttonModeIconRes", "showRightIcon", "I", "mCurrentSearchState", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mRequireSearchAnimManagerTrans", "B", "singleIconDimen", "C", "edittextLayoutRes", "D", "isUseUnionBlur", "imeMaxHeight", "backIconAlphaAnimInitialized", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "Lc74;", "onRightIconClickListener", "onRightIcon2ClickListener", "Le74;", "mSearchBarClickListener", "J", "mSearchBarInnerRightIconClickListener", "K", "mSearchButtonModeClickListener", "L", "onBackClickListener", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SavedState", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidSearchBar extends FrameLayout {
    public static final int LIQUID_SEARCHBAR_COMPOSE_TAB_CONTRACTED_STATE = 5;
    public static final int LIQUID_SEARCHBAR_EXIT_SPRING_FINAL_POSITION = 124;
    public static final float LIQUID_SEARCHBAR_SCALE_MIN = 0.3f;
    public static final int LIQUID_SEARCHBAR_STATE_ACTIVE_BK = 1;
    public static final int LIQUID_SEARCHBAR_STATE_ACTIVE_BK_NO_IME = 6;
    public static final int LIQUID_SEARCHBAR_STATE_ACTIVE_NO_BK = 2;
    public static final int LIQUID_SEARCHBAR_STATE_COMPOSE_END_STATE = 4;
    public static final int LIQUID_SEARCHBAR_STATE_COMPOSE_START_STATE = 3;
    public static final int LIQUID_SEARCHBAR_STATE_ENTRANCE = 0;
    public static final int LIQUID_SEARCHBAR_STATE_NONE = -1;

    public boolean mRequireSearchAnimManagerTrans;

    public final int singleIconDimen;

    public int edittextLayoutRes;

    public boolean isUseUnionBlur;

    public float imeMaxHeight;

    public boolean backIconAlphaAnimInitialized;

    public c74 onRightIconClickListener;

    public c74 onRightIcon2ClickListener;

    public e74 mSearchBarClickListener;

    public e74 mSearchBarInnerRightIconClickListener;

    public e74 mSearchButtonModeClickListener;

    public c74 onBackClickListener;

    public boolean mHaveRightIcon;

    public boolean mIsRightOutIconsVisiable;

    public final u97 liquidPressHelper;

    public OSAutoCompleteTextView searchEditText;

    public boolean mDuringShareAnim;

    public final yi5 leftIcon;

    public final yi5 rightIcon;

    public final yi5 buttonMode;

    public final yi5 rightIcon2;

    public final yi5 innerRightIcon;

    public final yi5 editeTextContainer;

    public final yi5 innerLeftIcon;

    public TextWatcher mTextWatcher;

    public jv9 expandAnimator;

    public jv9 composeExitAnimator;

    public boolean keyboardShowPostPending;

    public String leftIconRes;

    public String rightIconRes;

    public String rightIconRes2;

    public String innerRightIconRes;

    public String innerLeftIconRes;

    public String hintText;

    public String buttonModeIconRes;

    public boolean showRightIcon;

    public int mCurrentSearchState;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSearchBar$SavedState;", "Landroid/view/AbsSavedState;", "Landroid/os/Parcelable;", "superState", MethodDecl.initName, "(Landroid/os/Parcelable;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "out", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "searchState", "I", "getSearchState", "()I", "setSearchState", "(I)V", "CREATOR", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SavedState extends AbsSavedState {

        public static final Companion INSTANCE = new Companion(null);
        private int searchState;

        public static final class Companion implements Parcelable.Creator {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                y45.j(parcel, "parcel");
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            public Companion() {
            }
        }

        public SavedState(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        public final int getSearchState() {
            return this.searchState;
        }

        public final void setSearchState(int i) {
            this.searchState = i;
        }

        @Override
        public void writeToParcel(Parcel out, int flags) {
            y45.j(out, "out");
            super.writeToParcel(out, flags);
            out.writeInt(this.searchState);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.searchState = parcel.readInt();
        }
    }

    public static final class b extends InputFilter.LengthFilter {
        public WeakReference a;
        public int b;
        public Toast c;
        public String d;

        public b(Context context, int i, String str) {
            super(i);
            if (context != null) {
                this.a = new WeakReference(context);
                this.b = i;
                this.d = str;
            }
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            y45.j(charSequence, "source");
            CharSequence charSequenceFilter = super.filter(charSequence, i, i2, spanned, i3, i4);
            if (spanned == null) {
                return charSequenceFilter;
            }
            int length = spanned.length();
            WeakReference weakReference = this.a;
            y45.g(weakReference);
            Context context = (Context) weakReference.get();
            if (context == null || length < this.b || length == 0 || charSequenceFilter == null || TextUtils.isEmpty(this.d)) {
                return charSequenceFilter;
            }
            if (this.c == null) {
                this.c = Toast.makeText(context, this.d, 1);
            }
            Toast toast = this.c;
            if (toast != null) {
                toast.show();
            }
            return charSequenceFilter;
        }
    }

    public final class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            OSLiquidSearchBar.this.x();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSearchBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void A(float f, OSLiquidSearchBar oSLiquidSearchBar, boolean z, boolean z2, boolean z3, int i, int i2, f43 f43Var, float f2, float f3) {
        y45.j(oSLiquidSearchBar, "this$0");
        float fAbs = Math.abs(f2) / f;
        float f4 = 1 - fAbs;
        oSLiquidSearchBar.getLeftIcon().setAlpha(f4);
        float f5 = (f4 * 0.7f) + 0.3f;
        oSLiquidSearchBar.getLeftIcon().setScaleX(f5);
        oSLiquidSearchBar.getLeftIcon().setScaleY(f5);
        float f6 = (0.7f * fAbs) + 0.3f;
        if (z) {
            oSLiquidSearchBar.getRightIcon().setAlpha(fAbs);
            oSLiquidSearchBar.getRightIcon().setScaleX(f6);
            oSLiquidSearchBar.getRightIcon().setScaleY(f6);
        }
        if (z2) {
            oSLiquidSearchBar.getRightIcon2().setAlpha(fAbs);
            oSLiquidSearchBar.getRightIcon2().setScaleX(f6);
            oSLiquidSearchBar.getRightIcon2().setScaleY(f6);
        }
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        layoutParams2.setMarginEnd((int) (oSLiquidSearchBar.E(z3) * fAbs));
        layoutParams2.setMarginStart((int) (((i - i2) * f4) + i2));
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
    }

    public static final void B(OSLiquidSearchBar oSLiquidSearchBar, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        oSLiquidSearchBar.getLeftIcon().setVisibility(8);
        oSLiquidSearchBar.getEditeTextContainer().setClickable(true);
        oSLiquidSearchBar.getEditeTextContainer().attachPressAnim();
    }

    public static final void C(int i, int i2, OSLiquidSearchBar oSLiquidSearchBar, int i3, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        int i4 = i - i2;
        float fJ = i4 == 0 ? 1.0f : wn8.j(Math.abs((i - f) / i4), 0.0f, 1.0f);
        float f3 = 1;
        float f4 = ((f3 - fJ) * 0.7f) + 0.3f;
        oSLiquidSearchBar.getLeftIcon().setScaleX(f4);
        oSLiquidSearchBar.getLeftIcon().setScaleY(f4);
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = (int) f;
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = (int) (i3 + ((i2 - i3) * fJ));
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
        float f5 = 100 * fJ;
        if (f5 <= 20.0f) {
            float f6 = fJ * 5;
            oSLiquidSearchBar.getLeftIcon().setAlpha(f3 - f6);
            oSLiquidSearchBar.getInnerRightIcon().setAlpha(0.0f);
            oSLiquidSearchBar.getButtonMode().setAlpha(f6);
        } else {
            oSLiquidSearchBar.getLeftIcon().setAlpha(0.0f);
            oSLiquidSearchBar.getInnerRightIcon().setAlpha(0.0f);
            oSLiquidSearchBar.getButtonMode().setAlpha(1.0f);
        }
        OSAutoCompleteTextView oSAutoCompleteTextView = null;
        if (f5 >= 20.0f && f5 <= 40.0f) {
            float f7 = 1.0f - (((f5 - 20) / 100.0f) * 5);
            oSLiquidSearchBar.getInnerLeftIcon().setAlpha(f7);
            OSAutoCompleteTextView oSAutoCompleteTextView2 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView2 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView = oSAutoCompleteTextView2;
            }
            oSAutoCompleteTextView.setAlpha(f7);
            return;
        }
        if (f5 > 40.0f) {
            oSLiquidSearchBar.getInnerLeftIcon().setAlpha(0.0f);
            OSAutoCompleteTextView oSAutoCompleteTextView3 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView3 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView = oSAutoCompleteTextView3;
            }
            oSAutoCompleteTextView.setAlpha(0.0f);
            return;
        }
        oSLiquidSearchBar.getInnerLeftIcon().setAlpha(1.0f);
        OSAutoCompleteTextView oSAutoCompleteTextView4 = oSLiquidSearchBar.searchEditText;
        if (oSAutoCompleteTextView4 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView = oSAutoCompleteTextView4;
        }
        oSAutoCompleteTextView.setAlpha(1.0f);
    }

    public static final void D(OSLiquidSearchBar oSLiquidSearchBar, int i, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = i;
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = i;
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = oSLiquidSearchBar.getButtonMode().getLayoutParams();
        layoutParams3.width = i;
        layoutParams3.height = i;
        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams3).gravity = 17;
        }
        oSLiquidSearchBar.getButtonMode().setLayoutParams(layoutParams3);
        oSLiquidSearchBar.getEditeTextContainer().attachPressAnim();
        oSLiquidSearchBar.getEditeTextContainer().setClickable(true);
        oSLiquidSearchBar.getLeftIcon().setVisibility(8);
        oSLiquidSearchBar.getInnerLeftIcon().setVisibility(8);
        oSLiquidSearchBar.getInnerRightIcon().setVisibility(8);
    }

    public static int G(OSLiquidSearchBar oSLiquidSearchBar, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getEditeTotalMarginEndNoAnim");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        return oSLiquidSearchBar.F(z);
    }

    public static final void I(int i, int i2, OSLiquidSearchBar oSLiquidSearchBar, boolean z, boolean z2, Boolean bool, float f, f43 f43Var, float f2, float f3) {
        y45.j(oSLiquidSearchBar, "this$0");
        float f4 = (f2 - i) / i2;
        oSLiquidSearchBar.getLeftIcon().setAlpha(f4);
        float f5 = (f4 * 0.7f) + 0.3f;
        oSLiquidSearchBar.getLeftIcon().setScaleX(f5);
        oSLiquidSearchBar.getLeftIcon().setScaleY(f5);
        float f6 = 1 - f4;
        float f7 = (0.7f * f6) + 0.3f;
        if (z) {
            oSLiquidSearchBar.getRightIcon().setScaleX(f7);
            oSLiquidSearchBar.getRightIcon().setScaleY(f7);
            oSLiquidSearchBar.getRightIcon().setAlpha(f6);
        }
        if (z2) {
            oSLiquidSearchBar.getRightIcon2().setScaleX(f7);
            oSLiquidSearchBar.getRightIcon2().setScaleY(f7);
            oSLiquidSearchBar.getRightIcon2().setAlpha(f6);
        }
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        layoutParams2.setMarginEnd((int) (oSLiquidSearchBar.E(true) * f6));
        layoutParams2.setMarginStart((int) f2);
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
        if (y45.e(bool, Boolean.TRUE)) {
            float f8 = ((f - 1.0f) * f6) + 1.0f;
            oSLiquidSearchBar.getEditeTextContainer().setScaleX(f8);
            oSLiquidSearchBar.getEditeTextContainer().setScaleY(f8);
        }
    }

    public static final void J(OSLiquidSearchBar oSLiquidSearchBar, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        if (z) {
            return;
        }
        oSLiquidSearchBar.getLeftIcon().setVisibility(0);
    }

    public static final void K(int i, int i2, OSLiquidSearchBar oSLiquidSearchBar, int i3, int i4, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        float f3 = i;
        float f4 = i2 - i;
        float f5 = (f - f3) / f4;
        float f6 = (0.7f * f5) + 0.3f;
        oSLiquidSearchBar.getLeftIcon().setScaleX(f6);
        oSLiquidSearchBar.getLeftIcon().setScaleY(f6);
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = (int) (((i3 - i4) * f5) + i4);
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = (int) ((f4 * f5) + f3);
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
        float f7 = 100 * f5;
        if (f7 <= 20.0f) {
            float f8 = f5 * 5;
            oSLiquidSearchBar.getLeftIcon().setAlpha(f8);
            oSLiquidSearchBar.getInnerRightIcon().setAlpha(f8);
            oSLiquidSearchBar.getButtonMode().setAlpha(1 - f8);
        } else {
            oSLiquidSearchBar.getLeftIcon().setAlpha(1.0f);
            oSLiquidSearchBar.getInnerRightIcon().setAlpha(1.0f);
            oSLiquidSearchBar.getButtonMode().setAlpha(0.0f);
        }
        OSAutoCompleteTextView oSAutoCompleteTextView = null;
        if (f7 >= 20.0f && f7 <= 40.0f) {
            float f9 = ((f7 - 20) / 100.0f) * 5;
            oSLiquidSearchBar.getInnerLeftIcon().setAlpha(f9);
            OSAutoCompleteTextView oSAutoCompleteTextView2 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView2 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView = oSAutoCompleteTextView2;
            }
            oSAutoCompleteTextView.setAlpha(f9);
            return;
        }
        if (f7 > 40.0f) {
            oSLiquidSearchBar.getInnerLeftIcon().setAlpha(1.0f);
            OSAutoCompleteTextView oSAutoCompleteTextView3 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView3 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView = oSAutoCompleteTextView3;
            }
            oSAutoCompleteTextView.setAlpha(1.0f);
            return;
        }
        oSLiquidSearchBar.getInnerLeftIcon().setAlpha(0.0f);
        OSAutoCompleteTextView oSAutoCompleteTextView4 = oSLiquidSearchBar.searchEditText;
        if (oSAutoCompleteTextView4 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView = oSAutoCompleteTextView4;
        }
        oSAutoCompleteTextView.setAlpha(0.0f);
    }

    public static final void L(OSLiquidSearchBar oSLiquidSearchBar, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        oSLiquidSearchBar.getButtonMode().setVisibility(8);
        OSAutoCompleteTextView oSAutoCompleteTextView = oSLiquidSearchBar.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.requestFocus();
    }

    public static final boolean Q(OSLiquidSearchBar oSLiquidSearchBar, View view, MotionEvent motionEvent) {
        y45.j(oSLiquidSearchBar, "this$0");
        if (motionEvent.getAction() == 0) {
            OSAutoCompleteTextView oSAutoCompleteTextView = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView == null) {
                y45.B("searchEditText");
                oSAutoCompleteTextView = null;
            }
            if (oSAutoCompleteTextView.isClickable()) {
                oSLiquidSearchBar.getEditeTextContainer().getOsPressView().showWithFadeAnimation();
                oSLiquidSearchBar.a0(oSLiquidSearchBar.getEditeTextContainer());
                return false;
            }
        }
        if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            return false;
        }
        oSLiquidSearchBar.getEditeTextContainer().getOsPressView().hideWithFadeAnimation();
        oSLiquidSearchBar.b0(oSLiquidSearchBar.getEditeTextContainer());
        return false;
    }

    public static final void R(OSLiquidSearchBar oSLiquidSearchBar) {
        y45.j(oSLiquidSearchBar, "this$0");
        oSLiquidSearchBar.x();
    }

    public static final void T(OSLiquidSearchBar oSLiquidSearchBar) {
        y45.j(oSLiquidSearchBar, "this$0");
        oSLiquidSearchBar.keyboardShowPostPending = false;
        OSAutoCompleteTextView oSAutoCompleteTextView = oSLiquidSearchBar.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        if (oSAutoCompleteTextView.isAttachedToWindow()) {
            OSAutoCompleteTextView oSAutoCompleteTextView3 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView3 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView2 = oSAutoCompleteTextView3;
            }
            if (oSAutoCompleteTextView2.hasFocus()) {
                oSLiquidSearchBar.Z();
            }
        }
    }

    public static final void U(OSLiquidSearchBar oSLiquidSearchBar, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getButtonMode().getLayoutParams();
        int i = (int) f;
        layoutParams.width = i;
        layoutParams.height = i;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        oSLiquidSearchBar.getButtonMode().setLayoutParams(layoutParams);
        oSLiquidSearchBar.getButtonMode().setAlpha(f * 5);
        ViewGroup.LayoutParams layoutParams2 = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) layoutParams2;
        ((ViewGroup.MarginLayoutParams) layoutParams3).width = i;
        ((ViewGroup.MarginLayoutParams) layoutParams3).height = i;
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams3);
    }

    public static final void V(OSLiquidSearchBar oSLiquidSearchBar, f43 f43Var, boolean z, float f, float f2) {
        y45.j(oSLiquidSearchBar, "this$0");
        oSLiquidSearchBar.getEditeTextContainer().setClickable(true);
        oSLiquidSearchBar.getLeftIcon().setVisibility(8);
        oSLiquidSearchBar.getButtonMode().setAlpha(1.0f);
    }

    public static final void X(OSLiquidSearchBar oSLiquidSearchBar, View view) {
        y45.j(oSLiquidSearchBar, "this$0");
        OSAutoCompleteTextView oSAutoCompleteTextView = oSLiquidSearchBar.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        if (TextUtils.isEmpty(oSAutoCompleteTextView.getText())) {
            OSAutoCompleteTextView oSAutoCompleteTextView2 = oSLiquidSearchBar.searchEditText;
            if (oSAutoCompleteTextView2 == null) {
                y45.B("searchEditText");
                oSAutoCompleteTextView2 = null;
            }
            if (oSAutoCompleteTextView2.length() <= 0) {
                e74 e74Var = oSLiquidSearchBar.mSearchBarInnerRightIconClickListener;
                if (e74Var != null) {
                    e74Var.invoke(oSLiquidSearchBar.getInnerRightIcon());
                    return;
                }
                return;
            }
        }
        OSAutoCompleteTextView oSAutoCompleteTextView3 = oSLiquidSearchBar.searchEditText;
        if (oSAutoCompleteTextView3 == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView3 = null;
        }
        oSAutoCompleteTextView3.setText((CharSequence) null);
        oSLiquidSearchBar.Z();
    }

    public static final void Y(OSLiquidSearchBar oSLiquidSearchBar, View view) {
        y45.j(oSLiquidSearchBar, "this$0");
        int i = oSLiquidSearchBar.mCurrentSearchState;
        if (i == 3 || i == 4 || i == 5) {
            e74 e74Var = oSLiquidSearchBar.mSearchButtonModeClickListener;
            if (e74Var != null) {
                e74Var.invoke(oSLiquidSearchBar.getEditeTextContainer());
                return;
            }
            return;
        }
        e74 e74Var2 = oSLiquidSearchBar.mSearchBarClickListener;
        if (e74Var2 != null) {
            e74Var2.invoke(oSLiquidSearchBar.getEditeTextContainer());
        }
    }

    public static void changeIcon$default(OSLiquidSearchBar oSLiquidSearchBar, OSIconTextView oSIconTextView, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: changeIcon");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        oSLiquidSearchBar.changeIcon(oSIconTextView, z, str);
    }

    private final OSIconTextView getButtonMode() {
        Object value = this.buttonMode.getValue();
        y45.i(value, "<get-buttonMode>(...)");
        return (OSIconTextView) value;
    }

    private final int getButtonModeHeight() {
        return (olb.g0(getContext()) && olb.h0(getContext())) ? getResources().getDimensionPixelSize(R.dimen.os_pad_search_bar_btn_mode_height) : getResources().getDimensionPixelSize(R.dimen.os_search_bar_btn_mode_height);
    }

    private final int getEditeDefaultMarginEnd() {
        return getResources().getDimensionPixelSize(R.dimen.os_space150);
    }

    private final int getEditeDefaultMarginStart() {
        return getResources().getDimensionPixelSize(R.dimen.os_space150);
    }

    public final OSLiquidContainerRootLayout getEditeTextContainer() {
        Object value = this.editeTextContainer.getValue();
        y45.i(value, "<get-editeTextContainer>(...)");
        return (OSLiquidContainerRootLayout) value;
    }

    private final int getEditeTotalMarginStart() {
        return getEditeDefaultMarginStart() + (getLeftIcon().getVisibility() != 8 ? getLeftIconWidth() : 0);
    }

    private final OSIconTextView getInnerLeftIcon() {
        Object value = this.innerLeftIcon.getValue();
        y45.i(value, "<get-innerLeftIcon>(...)");
        return (OSIconTextView) value;
    }

    private final OSIconTextView getInnerRightIcon() {
        Object value = this.innerRightIcon.getValue();
        y45.i(value, "<get-innerRightIcon>(...)");
        return (OSIconTextView) value;
    }

    public final OSLiquidButton getLeftIcon() {
        Object value = this.leftIcon.getValue();
        y45.i(value, "<get-leftIcon>(...)");
        return (OSLiquidButton) value;
    }

    private final int getLeftIconWidth() {
        return getOutIconSize();
    }

    private final int getOutIconSize() {
        return (olb.g0(getContext()) && olb.h0(getContext())) ? getResources().getDimensionPixelSize(R.dimen.os_pad_search_bar_out_icon_size) : getResources().getDimensionPixelSize(R.dimen.os_search_bar_out_icon_size);
    }

    private final OSLiquidButton getRightIcon() {
        Object value = this.rightIcon.getValue();
        y45.i(value, "<get-rightIcon>(...)");
        return (OSLiquidButton) value;
    }

    private final OSLiquidButton getRightIcon2() {
        Object value = this.rightIcon2.getValue();
        y45.i(value, "<get-rightIcon2>(...)");
        return (OSLiquidButton) value;
    }

    private final int getRightIcon2Width() {
        return getOutIconSize();
    }

    private final int getRightIconWidth() {
        return getOutIconSize();
    }

    private final int getRightSingleIconWidth() {
        return getOutIconSize();
    }

    private final int getSearchModeHeight() {
        return getOutIconSize();
    }

    public static void goSearchStateForCompose$default(OSLiquidSearchBar oSLiquidSearchBar, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: goSearchStateForCompose");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        oSLiquidSearchBar.goSearchStateForCompose(z);
    }

    public static void setCustomMix$default(OSLiquidSearchBar oSLiquidSearchBar, int i, BlendMode blendMode, int i2, BlendMode blendMode2, int i3, BlendMode blendMode3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setCustomMix");
        }
        oSLiquidSearchBar.setCustomMix(i, blendMode, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? null : blendMode2, (i4 & 16) != 0 ? 0 : i3, (i4 & 32) != 0 ? null : blendMode3);
    }

    public static void setSearchBarState$default(OSLiquidSearchBar oSLiquidSearchBar, int i, int i2, boolean z, Boolean bool, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSearchBarState");
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            bool = Boolean.FALSE;
        }
        oSLiquidSearchBar.setSearchBarState(i, i2, z, bool);
    }

    public static final void setSearchBarState$lambda$30(OSLiquidSearchBar oSLiquidSearchBar) {
        y45.j(oSLiquidSearchBar, "this$0");
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = ((oSLiquidSearchBar.getMeasuredWidth() - oSLiquidSearchBar.getLeftIconWidth()) - oSLiquidSearchBar.getEditeDefaultMarginStart()) - (oSLiquidSearchBar.getResources().getDimensionPixelSize(R.dimen.os_space200) * 2);
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = oSLiquidSearchBar.getSearchModeHeight();
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
    }

    public static final void setSearchBarState$lambda$32(OSLiquidSearchBar oSLiquidSearchBar) {
        y45.j(oSLiquidSearchBar, "this$0");
        ViewGroup.LayoutParams layoutParams = oSLiquidSearchBar.getEditeTextContainer().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = ((oSLiquidSearchBar.getMeasuredWidth() - oSLiquidSearchBar.getLeftIconWidth()) - oSLiquidSearchBar.getEditeDefaultMarginStart()) - (oSLiquidSearchBar.getResources().getDimensionPixelSize(R.dimen.os_space200) * 2);
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = oSLiquidSearchBar.getSearchModeHeight();
        oSLiquidSearchBar.getEditeTextContainer().setLayoutParams(layoutParams2);
    }

    private final void setShadowShow(boolean showShadow) {
        getLeftIcon().setShowShadow(showShadow);
        getEditeTextContainer().setShowShadow(showShadow);
        getRightIcon().setShowShadow(showShadow);
        getRightIcon2().setShowShadow(showShadow);
    }

    public final int E(boolean isEntrance) {
        int editeDefaultMarginEnd = getEditeDefaultMarginEnd();
        int rightIconWidth = (N() ? getRightIconWidth() + editeDefaultMarginEnd : 0) + (M() ? getRightIcon2Width() + editeDefaultMarginEnd : 0);
        if (!N() && !M() && !isEntrance) {
            editeDefaultMarginEnd = 0;
        }
        return rightIconWidth + editeDefaultMarginEnd;
    }

    public final int F(boolean isEntrance) {
        int editeDefaultMarginEnd = 0;
        int rightIconWidth = (getRightIcon().getVisibility() != 8 ? getRightIconWidth() + getEditeDefaultMarginEnd() : 0) + (getRightIcon2().getVisibility() != 8 ? getRightIcon2Width() + getEditeDefaultMarginEnd() : 0);
        if (getRightIcon2().getVisibility() == 0 || getRightIcon().getVisibility() == 0 || isEntrance) {
            editeDefaultMarginEnd = getEditeDefaultMarginEnd();
        }
        return rightIconWidth + editeDefaultMarginEnd;
    }

    public final void H(final Boolean isScaleHeight) {
        jv9 jv9Var = this.expandAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        final int leftIconWidth = getLeftIconWidth();
        final int editeDefaultMarginStart = getEditeDefaultMarginStart();
        int editeTotalMarginStart = getEditeTotalMarginStart();
        final boolean zN = N();
        final boolean zM = M();
        final float scaleY = getEditeTextContainer().getScaleY();
        jv9 jv9Var2 = new jv9(new fz3());
        kv9 kv9Var = new kv9();
        kv9Var.g(0.79f);
        kv9Var.i(400.0f);
        kv9Var.h(editeTotalMarginStart);
        jv9Var2.z(kv9Var);
        jv9Var2.m(editeDefaultMarginStart);
        getLeftIcon().setVisibility(0);
        getLeftIcon().setAlpha(0.0f);
        getLeftIcon().setScaleX(0.3f);
        getLeftIcon().setScaleY(0.3f);
        jv9Var2.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSearchBar.I(editeDefaultMarginStart, leftIconWidth, this, zN, zM, isScaleHeight, scaleY, f43Var, f, f2);
            }
        });
        jv9Var2.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSearchBar.J(this.a, f43Var, z, f, f2);
            }
        });
        jv9Var2.p();
        this.expandAnimator = jv9Var2;
    }

    public final boolean M() {
        return this.rightIconRes2 != null && this.mIsRightOutIconsVisiable;
    }

    public final boolean N() {
        return this.rightIconRes != null && this.mIsRightOutIconsVisiable;
    }

    public final void O(AttributeSet attrs) {
        Context context = getContext();
        y45.i(context, "context");
        int[] iArr = R.styleable.OSLiquidSearchBar;
        y45.i(iArr, "OSLiquidSearchBar");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.leftIconRes = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_left_icon);
        this.rightIconRes = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_right_icon);
        this.rightIconRes2 = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_right_icon_2);
        this.innerRightIconRes = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_inner_right_icon);
        this.innerLeftIconRes = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_inner_left_icon);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_hint);
        if (string == null) {
            string = "";
        } else {
            y45.i(string, "getString(R.styleable.OS…Bar_os_search_hint) ?: \"\"");
        }
        this.hintText = string;
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidSearchBar_os_search_button_mode_icon);
        if (string2 == null) {
            string2 = typedArrayObtainStyledAttributes.getResources().getString(R.string.os_search);
        }
        this.buttonModeIconRes = string2;
        this.mCurrentSearchState = typedArrayObtainStyledAttributes.getInt(R.styleable.OSLiquidSearchBar_os_search_init_state, 0);
        this.edittextLayoutRes = typedArrayObtainStyledAttributes.getResourceId(R.styleable.OSLiquidSearchBar_os_search_edittext_layout, -1);
        this.isUseUnionBlur = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidSearchBar_os_enable_union_effect, false);
        this.mIsRightOutIconsVisiable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidSearchBar_os_search_has_right_out_icons, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void P(AttributeSet attrs) {
        removeAllViews();
        v();
        getEditeTextContainer().setScaleRatio(1.05f);
        String str = this.rightIconRes;
        if (str != null) {
            this.mHaveRightIcon = true;
            getRightIcon().setIcon(str);
            if (this.mIsRightOutIconsVisiable) {
                getRightIcon().setVisibility(0);
            } else {
                getRightIcon().setVisibility(8);
            }
        }
        String str2 = this.rightIconRes2;
        if (str2 != null) {
            this.mHaveRightIcon = true;
            getRightIcon2().setIcon(str2);
            if (this.mIsRightOutIconsVisiable) {
                getRightIcon2().setVisibility(0);
            } else {
                getRightIcon2().setVisibility(8);
            }
        }
        String str3 = this.innerLeftIconRes;
        if (str3 != null) {
            getInnerLeftIcon().setText(str3);
        }
        String str4 = this.innerRightIconRes;
        if (str4 != null) {
            changeIcon(getInnerRightIcon(), false, str4);
            getInnerRightIcon().setVisibility(0);
        }
        getButtonMode().setText(this.buttonModeIconRes);
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setHint(this.hintText);
        if (!olb.P) {
            OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
            if (oSAutoCompleteTextView3 == null) {
                y45.B("searchEditText");
                oSAutoCompleteTextView3 = null;
            }
            oSAutoCompleteTextView3.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return OSLiquidSearchBar.Q(this.b, view, motionEvent);
                }
            });
        }
        setSearchBarState$default(this, -1, this.mCurrentSearchState, false, null, 12, null);
        setClipChildren(false);
        setClipToPadding(false);
        OSAutoCompleteTextView oSAutoCompleteTextView4 = this.searchEditText;
        if (oSAutoCompleteTextView4 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView2 = oSAutoCompleteTextView4;
        }
        oSAutoCompleteTextView2.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidSearchBar.R(this.b);
            }
        });
        Context context = getContext();
        y45.i(context, "context");
        int[] iArr = com.transsion.widgetslib.R.styleable.OSLiquidContainer;
        y45.i(iArr, "OSLiquidContainer");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        if (!typedArrayObtainStyledAttributes.hasValue(R.styleable.OSLiquidContainer_os_liquid_mixlevel) && Build.VERSION.SDK_INT >= 31) {
            setMixLevel(this.isUseUnionBlur ? 6 : 2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void S() {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.requestFocus();
        OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
        if (oSAutoCompleteTextView3 == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView3 = null;
        }
        if (oSAutoCompleteTextView3.isAttachedToWindow()) {
            OSAutoCompleteTextView oSAutoCompleteTextView4 = this.searchEditText;
            if (oSAutoCompleteTextView4 == null) {
                y45.B("searchEditText");
                oSAutoCompleteTextView4 = null;
            }
            if (oSAutoCompleteTextView4.hasWindowFocus()) {
                Z();
                return;
            }
        }
        if (this.keyboardShowPostPending) {
            return;
        }
        this.keyboardShowPostPending = true;
        OSAutoCompleteTextView oSAutoCompleteTextView5 = this.searchEditText;
        if (oSAutoCompleteTextView5 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView2 = oSAutoCompleteTextView5;
        }
        oSAutoCompleteTextView2.post(new Runnable() {
            @Override
            public final void run() {
                OSLiquidSearchBar.T(this.b);
            }
        });
    }

    public final void W() {
        getLeftIcon().setOnLiquidClickListener(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m129invoke();
                return zfb.a;
            }

            public final void m129invoke() {
                c74 c74Var = this.this$0.onBackClickListener;
                if (c74Var != null) {
                    c74Var.invoke();
                }
            }
        });
        getRightIcon().setOnLiquidClickListener(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m130invoke();
                return zfb.a;
            }

            public final void m130invoke() {
                c74 c74Var = this.this$0.onRightIconClickListener;
                if (c74Var != null) {
                    c74Var.invoke();
                }
            }
        });
        getRightIcon2().setOnLiquidClickListener(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m131invoke();
                return zfb.a;
            }

            public final void m131invoke() {
                c74 c74Var = this.this$0.onRightIcon2ClickListener;
                if (c74Var != null) {
                    c74Var.invoke();
                }
            }
        });
        getInnerRightIcon().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSLiquidSearchBar.X(this.b, view);
            }
        });
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                OSLiquidSearchBar.Y(this.b, view);
            }
        });
        getEditeTextContainer().setOnLiquidClickListener(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m132invoke();
                return zfb.a;
            }

            public final void m132invoke() {
                if (this.this$0.mCurrentSearchState == 3 || this.this$0.mCurrentSearchState == 4 || this.this$0.mCurrentSearchState == 5) {
                    e74 e74Var = this.this$0.mSearchButtonModeClickListener;
                    if (e74Var != null) {
                        e74Var.invoke(this.this$0.getEditeTextContainer());
                        return;
                    }
                    return;
                }
                e74 e74Var2 = this.this$0.mSearchBarClickListener;
                if (e74Var2 != null) {
                    e74Var2.invoke(this.this$0.getEditeTextContainer());
                }
            }
        });
    }

    public final void Z() {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        WindowInsetsControllerCompat windowInsetsController = ViewCompat.getWindowInsetsController(oSAutoCompleteTextView);
        if (windowInsetsController != null) {
            windowInsetsController.show(WindowInsetsCompat.Type.ime());
            return;
        }
        Object systemService = getContext().getSystemService("input_method");
        y45.h(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
        if (oSAutoCompleteTextView3 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView2 = oSAutoCompleteTextView3;
        }
        inputMethodManager.showSoftInput(oSAutoCompleteTextView2, 1);
    }

    public final void a0(View hostView) {
        this.liquidPressHelper.h(hostView, 1.05f);
    }

    public final void b0(View hostView) {
        this.liquidPressHelper.i(hostView);
    }

    public final void changeIcon(OSIconTextView oSIconTextView, boolean z, String str) {
        y45.j(oSIconTextView, "<this>");
        int dimensionPixelSize = oSIconTextView.getResources().getDimensionPixelSize(z ? R.dimen.os_search_bar_icon_inner_close_size : R.dimen.os_search_bar_icon_inner_cus_size);
        oSIconTextView.setText(str);
        oSIconTextView.setTextSize(0, dimensionPixelSize);
    }

    public final void copyScale(OSLiquidSearchBar osLiquidSearchBar) {
        y45.j(osLiquidSearchBar, "osLiquidSearchBar");
        getEditeTextContainer().setScaleX(osLiquidSearchBar.getEditTextContainer().getScaleX());
        getEditeTextContainer().setScaleY(osLiquidSearchBar.getEditTextContainer().getScaleY());
    }

    public final void enableEditTextClick(boolean clickable) {
        this.mDuringShareAnim = !clickable;
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setShouldInterceptEvents(!clickable);
        getEditeTextContainer().setClickable(clickable);
        if (clickable) {
            getEditeTextContainer().attachPressAnim();
        } else {
            getEditeTextContainer().detachPressAnim();
        }
    }

    public final jv9 endSearchForTransition() {
        setSearchBarState$default(this, this.mCurrentSearchState, 0, true, null, 8, null);
        return this.expandAnimator;
    }

    public final void exitSearchStateCompose() {
        jv9 jv9Var = this.expandAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.composeExitAnimator;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        Integer numValueOf = Integer.valueOf(getEditeTextContainer().getWidth());
        if (numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        final int iIntValue = numValueOf != null ? numValueOf.intValue() : ((getMeasuredWidth() - getLeftIconWidth()) - getEditeDefaultMarginStart()) - (getResources().getDimensionPixelSize(R.dimen.os_space200) * 2);
        Integer numValueOf2 = Integer.valueOf(getEditeTextContainer().getHeight());
        Integer num = numValueOf2.intValue() > 0 ? numValueOf2 : null;
        final int iIntValue2 = num != null ? num.intValue() : getSearchModeHeight();
        final int buttonModeHeight = getButtonModeHeight();
        getInnerRightIcon().setAlpha(0.0f);
        getInnerRightIcon().setVisibility(8);
        getEditeTextContainer().detachPressAnim();
        jv9 jv9Var3 = new jv9(new fz3());
        kv9 kv9Var = new kv9();
        kv9Var.g(0.79f);
        kv9Var.i(400.0f);
        kv9Var.h(buttonModeHeight);
        jv9Var3.z(kv9Var);
        jv9Var3.m(iIntValue);
        jv9Var3.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSearchBar.C(iIntValue, buttonModeHeight, this, iIntValue2, f43Var, f, f2);
            }
        });
        jv9Var3.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSearchBar.D(this.a, buttonModeHeight, f43Var, z, f, f2);
            }
        });
        jv9Var3.p();
        this.composeExitAnimator = jv9Var3;
    }

    public final View getBackView() {
        return getLeftIcon();
    }

    public final View getDeleteButton() {
        return getInnerRightIcon();
    }

    public final EditText getEditText() {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView != null) {
            return oSAutoCompleteTextView;
        }
        y45.B("searchEditText");
        return null;
    }

    public final OSLiquidContainerRootLayout getEditTextContainer() {
        return getEditeTextContainer();
    }

    public final AutoCompleteTextView getEditTextView() {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView != null) {
            return oSAutoCompleteTextView;
        }
        y45.B("searchEditText");
        return null;
    }

    public final View getInnerRightIconView() {
        return getDeleteButton();
    }

    public final OSLiquidButton getLeftIconView() {
        return getLeftIcon();
    }

    public final OSLiquidButton getRightIcon2View() {
        return getRightIcon2();
    }

    public final OSLiquidButton getRightIconView() {
        return getRightIcon();
    }

    public final boolean getMIsRightOutIconsVisiable() {
        return this.mIsRightOutIconsVisiable;
    }

    public final int getMCurrentSearchState() {
        return this.mCurrentSearchState;
    }

    public final View getSearchIconView() {
        return getInnerLeftIcon();
    }

    public final String getText() {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        return oSAutoCompleteTextView.getText().toString();
    }

    public final void goSearchStateForCompose(boolean isBackIconVisible) {
        final int buttonModeHeight = getButtonModeHeight();
        final int searchModeHeight = getSearchModeHeight();
        final int buttonModeHeight2 = getButtonModeHeight();
        final int measuredWidth = ((getMeasuredWidth() - getLeftIconWidth()) - getEditeDefaultMarginStart()) - (getResources().getDimensionPixelSize(R.dimen.os_space200) * 2);
        jv9 jv9Var = new jv9(new fz3());
        kv9 kv9Var = new kv9();
        kv9Var.g(0.79f);
        kv9Var.i(400.0f);
        kv9Var.h(measuredWidth);
        jv9Var.z(kv9Var);
        jv9Var.m(buttonModeHeight2);
        if (isBackIconVisible) {
            getLeftIcon().setVisibility(0);
        } else {
            getLeftIcon().setVisibility(8);
        }
        getLeftIcon().setAlpha(0.0f);
        getLeftIcon().setScaleX(0.3f);
        getLeftIcon().setScaleY(0.3f);
        jv9Var.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSearchBar.K(buttonModeHeight2, measuredWidth, this, searchModeHeight, buttonModeHeight, f43Var, f, f2);
            }
        });
        jv9Var.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSearchBar.L(this.a, f43Var, z, f, f2);
            }
        });
        jv9Var.p();
        this.expandAnimator = jv9Var;
    }

    public final void hideKeyboard() {
        this.keyboardShowPostPending = false;
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        WindowInsetsControllerCompat windowInsetsController = ViewCompat.getWindowInsetsController(oSAutoCompleteTextView);
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsetsCompat.Type.ime());
            return;
        }
        Object systemService = getContext().getSystemService("input_method");
        y45.h(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
        if (oSAutoCompleteTextView3 == null) {
            y45.B("searchEditText");
        } else {
            oSAutoCompleteTextView2 = oSAutoCompleteTextView3;
        }
        inputMethodManager.hideSoftInputFromWindow(oSAutoCompleteTextView2.getWindowToken(), 0);
    }

    public final boolean isOnSearch() {
        int i = this.mCurrentSearchState;
        return (i == 0 || i == 3) ? false : true;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        bq5.c("OSLiquidSearchBar", "onAttachedToWindow");
        if (this.mTextWatcher == null) {
            Log.w("OSLiquidSearchBar", "addTextChangedListener failed:mTextWatcher is null");
            return;
        }
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.addTextChangedListener(this.mTextWatcher);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        bq5.c("OSLiquidSearchBar", "onDetachedFromWindow");
        jv9 jv9Var = this.expandAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.composeExitAnimator;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        this.liquidPressHelper.g();
        if (this.mTextWatcher == null) {
            Log.w("OSLiquidSearchBar", "removeTextChangedListener failed:mTextWatcher is null");
            return;
        }
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.removeTextChangedListener(this.mTextWatcher);
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        int searchState = savedState.getSearchState();
        this.mCurrentSearchState = searchState;
        setSearchBarState$default(this, -1, searchState, false, null, 8, null);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.setSearchState(this.mCurrentSearchState);
        return savedState;
    }

    public final OSIconTextView r() {
        Context context = getContext();
        y45.i(context, "context");
        OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
        oSIconTextView.setId(R.id.button_mode);
        oSIconTextView.setClickable(false);
        oSIconTextView.setGravity(17);
        oSIconTextView.setText(oSIconTextView.getResources().getString(R.string.os_search));
        oSIconTextView.setTextColor(olb.m(oSIconTextView.getContext(), R.attr.os_icon_primary, R.color.os_icon_primary_hios));
        oSIconTextView.setTextSize(0, oSIconTextView.getResources().getDimensionPixelSize(R.dimen.os_icon_medium_size));
        oSIconTextView.setVisibility(8);
        return oSIconTextView;
    }

    public final void requireSearchAnimManagerTrans(boolean requireSearchAnimManagerTrans) {
        this.mRequireSearchAnimManagerTrans = requireSearchAnimManagerTrans;
    }

    public final OSAutoCompleteTextView s() {
        Context context = getContext();
        y45.i(context, "context");
        OSAutoCompleteTextView oSAutoCompleteTextView = new OSAutoCompleteTextView(context, null, 0, 6, null);
        oSAutoCompleteTextView.setId(R.id.search_edit_text);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.setMarginStart(oSAutoCompleteTextView.getResources().getDimensionPixelSize(R.dimen.os_space075));
        oSAutoCompleteTextView.setLayoutParams(layoutParams);
        oSAutoCompleteTextView.setBackground(null);
        oSAutoCompleteTextView.setClickable(false);
        oSAutoCompleteTextView.setFocusable(false);
        oSAutoCompleteTextView.setFocusableInTouchMode(false);
        oSAutoCompleteTextView.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 0));
        oSAutoCompleteTextView.setGravity(16);
        oSAutoCompleteTextView.setImeOptions(3);
        oSAutoCompleteTextView.setInputType(1);
        oSAutoCompleteTextView.setEllipsize(TextUtils.TruncateAt.END);
        oSAutoCompleteTextView.setMaxLines(1);
        oSAutoCompleteTextView.setSingleLine(true);
        oSAutoCompleteTextView.setTextColor(oSAutoCompleteTextView.getContext().getColor(R.color.os_text_primary_color));
        oSAutoCompleteTextView.setHintTextColor(olb.m(oSAutoCompleteTextView.getContext(), R.attr.os_text_info, R.color.os_text_info_hios));
        oSAutoCompleteTextView.setTextSize(0, oSAutoCompleteTextView.getResources().getDimensionPixelSize(R.dimen.os_fontsize_h2));
        return oSAutoCompleteTextView;
    }

    public final void scaleButtonMode(boolean scale) {
        int buttonModeHeight = getButtonModeHeight();
        int searchModeHeight = getSearchModeHeight();
        jv9 jv9Var = new jv9(new fz3());
        kv9 kv9Var = new kv9();
        kv9Var.g(0.79f);
        kv9Var.i(400.0f);
        kv9Var.h(scale ? buttonModeHeight : searchModeHeight);
        jv9Var.z(kv9Var);
        jv9Var.m(scale ? searchModeHeight : buttonModeHeight);
        jv9Var.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSearchBar.U(this.a, f43Var, f, f2);
            }
        });
        jv9Var.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSearchBar.V(this.a, f43Var, z, f, f2);
            }
        });
        jv9Var.p();
        this.expandAnimator = jv9Var;
    }

    @RequiresApi(31)
    public final void setBlurNightMode(boolean nightMode) {
        getEditeTextContainer().setBlurNightMode(nightMode);
        getLeftIcon().setBlurNightMode(nightMode);
        getRightIcon().setBlurNightMode(nightMode);
        getRightIcon2().setBlurNightMode(nightMode);
    }

    @RequiresApi(31)
    public final void setCustomMix(int color1, BlendMode blendMode1, int color2, BlendMode blendMode2, int color3, BlendMode blendMode3) {
        getRightIcon().setCustomMix(color1, blendMode1, color2, blendMode2, color3, blendMode3);
        getRightIcon2().setCustomMix(color1, blendMode1, color2, blendMode2, color3, blendMode3);
        getLeftIcon().setCustomMix(color1, blendMode1, color2, blendMode2, color3, blendMode3);
        getEditeTextContainer().setCustomMix(color1, blendMode1, color2, blendMode2, color3, blendMode3);
    }

    public final void setDefaultBgColor(int bcColor) {
        getEditeTextContainer().setDefaultBgColor(bcColor);
        getLeftIcon().setDefaultBgColor(bcColor);
        getRightIcon().setDefaultBgColor(bcColor);
        getRightIcon2().setDefaultBgColor(bcColor);
    }

    @RequiresApi(31)
    public final void setForceBCEffect(boolean forceBCEffect) {
        getEditeTextContainer().setForceBCEffect(forceBCEffect);
        getLeftIcon().setForceBCEffect(forceBCEffect);
        getRightIcon().setForceBCEffect(forceBCEffect);
        getRightIcon2().setForceBCEffect(forceBCEffect);
    }

    @RequiresApi(31)
    public final void setForceSATransEffect(boolean forceBc) {
        if (olb.O) {
            setDefaultBgColor(getContext().getColor(R.color.os_liq_container_sa_force_color));
            setForceBCEffect(forceBc);
        }
    }

    public final void setHint(String hint) {
        y45.j(hint, "hint");
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setHint(hint);
    }

    public final void setImeHeight(float imeHeight) {
        this.imeMaxHeight = imeHeight;
    }

    public final void setInnerRightIconRes(String iconRes) {
        this.innerRightIconRes = iconRes;
        x();
    }

    public final void setInputMax(int max, int resId) {
        setInputMax(max, getResources().getString(resId));
    }

    public final void setLeftIcon(String drawable) {
        y45.j(drawable, "drawable");
        this.leftIconRes = drawable;
        getLeftIcon().setIcon(drawable);
    }

    public final void setLightTypeConfig(LightTypeConfig config) {
        y45.j(config, "config");
        getEditeTextContainer().setLightTypeConfig(config);
        getLeftIcon().setLightTypeConfig(config);
        getRightIcon().setLightTypeConfig(config);
        getRightIcon2().setLightTypeConfig(config);
    }

    @RequiresApi(31)
    public final void setMixLevel(int mixLevel) {
        getRightIcon().setMixLevel(mixLevel);
        getRightIcon2().setMixLevel(mixLevel);
        getLeftIcon().setMixLevel(mixLevel);
        getEditeTextContainer().setMixLevel(mixLevel);
    }

    public final void setOnBackClickListener(c74 listener) {
        y45.j(listener, "listener");
        this.onBackClickListener = listener;
    }

    public final void setOnRightIcon2ClickListener(c74 listener) {
        y45.j(listener, "listener");
        this.onRightIcon2ClickListener = listener;
    }

    public final void setOnRightIconClickListener(c74 listener) {
        y45.j(listener, "listener");
        this.onRightIconClickListener = listener;
    }

    public final void setOnSearchBarInnerRightIconClickListener(e74 listener) {
        y45.j(listener, "listener");
        this.mSearchBarInnerRightIconClickListener = listener;
    }

    public final void setOnSearchBarListener(e74 listener) {
        y45.j(listener, "listener");
        this.mSearchBarClickListener = listener;
    }

    public final void setOnSearchButtonModeClickListener(e74 listener) {
        y45.j(listener, "listener");
        this.mSearchButtonModeClickListener = listener;
    }

    public final void setRightIcon(String drawable) {
        this.rightIconRes = drawable;
        getRightIcon().setIcon(drawable);
    }

    public final void setRightIcon2(String drawable) {
        this.rightIconRes2 = drawable;
        getRightIcon2().setIcon(drawable);
    }

    public final void setRightOutIconsVisiable(boolean isRightIconVisible) {
        this.mIsRightOutIconsVisiable = isRightIconVisible;
    }

    public final void setSearchBarState(int fromState, int toState, boolean animation, Boolean scaleHeight) {
        bq5.c("OSLiquidSearchBar", "setSearchBarState: fromState = " + fromState + " toState = " + toState + " animation = " + animation);
        if (fromState == toState) {
            Log.v("OSLiquidSearchBar", "fromState == toState return");
        }
        this.mCurrentSearchState = toState;
        int i = 8;
        OSAutoCompleteTextView oSAutoCompleteTextView = null;
        switch (toState) {
            case 0:
                OSAutoCompleteTextView oSAutoCompleteTextView2 = this.searchEditText;
                if (oSAutoCompleteTextView2 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView2 = null;
                }
                oSAutoCompleteTextView2.setFocusable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
                if (oSAutoCompleteTextView3 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView3 = null;
                }
                oSAutoCompleteTextView3.setLongClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView4 = this.searchEditText;
                if (oSAutoCompleteTextView4 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView4 = null;
                }
                oSAutoCompleteTextView4.setFocusableInTouchMode(false);
                OSAutoCompleteTextView oSAutoCompleteTextView5 = this.searchEditText;
                if (oSAutoCompleteTextView5 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView5 = null;
                }
                oSAutoCompleteTextView5.setClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView6 = this.searchEditText;
                if (oSAutoCompleteTextView6 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView6 = null;
                }
                oSAutoCompleteTextView6.setShouldInterceptEvents(false);
                getEditeTextContainer().setClickable(true);
                getEditeTextContainer().attachPressAnim();
                getRightIcon2().setVisibility((!this.mIsRightOutIconsVisiable || TextUtils.isEmpty(this.rightIconRes2)) ? 8 : 0);
                getRightIcon().setVisibility((!this.mIsRightOutIconsVisiable || TextUtils.isEmpty(this.rightIconRes)) ? 8 : 0);
                if (animation) {
                    if (!olb.P) {
                        getEditeTextContainer().setClickable(false);
                    }
                    getEditeTextContainer().detachPressAnim();
                    z(true);
                } else {
                    getLeftIcon().setVisibility(8);
                    ViewGroup.LayoutParams layoutParams = getEditeTextContainer().getLayoutParams();
                    y45.h(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                    layoutParams2.setMarginStart(getEditeDefaultMarginStart());
                    layoutParams2.setMarginEnd(F(true));
                    getEditeTextContainer().setLayoutParams(layoutParams2);
                }
                OSAutoCompleteTextView oSAutoCompleteTextView7 = this.searchEditText;
                if (oSAutoCompleteTextView7 == null) {
                    y45.B("searchEditText");
                } else {
                    oSAutoCompleteTextView = oSAutoCompleteTextView7;
                }
                oSAutoCompleteTextView.clearFocus();
                hideKeyboard();
                break;
            case 1:
                OSAutoCompleteTextView oSAutoCompleteTextView8 = this.searchEditText;
                if (oSAutoCompleteTextView8 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView8 = null;
                }
                oSAutoCompleteTextView8.setFocusable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView9 = this.searchEditText;
                if (oSAutoCompleteTextView9 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView9 = null;
                }
                oSAutoCompleteTextView9.setLongClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView10 = this.searchEditText;
                if (oSAutoCompleteTextView10 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView10 = null;
                }
                oSAutoCompleteTextView10.setFocusableInTouchMode(true);
                OSAutoCompleteTextView oSAutoCompleteTextView11 = this.searchEditText;
                if (oSAutoCompleteTextView11 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView11 = null;
                }
                oSAutoCompleteTextView11.setClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView12 = this.searchEditText;
                if (oSAutoCompleteTextView12 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView12 = null;
                }
                oSAutoCompleteTextView12.setShouldInterceptEvents(true);
                if (!olb.P) {
                    getEditeTextContainer().setClickable(false);
                }
                getEditeTextContainer().detachPressAnim();
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                if (!animation) {
                    getLeftIcon().setVisibility(0);
                    getLeftIcon().setAlpha(1.0f);
                    ViewGroup.LayoutParams layoutParams3 = getEditeTextContainer().getLayoutParams();
                    y45.h(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
                    layoutParams4.setMarginStart(getEditeTotalMarginStart());
                    layoutParams4.setMarginEnd(G(this, false, 1, null));
                    getEditeTextContainer().setLayoutParams(layoutParams4);
                    S();
                } else {
                    getRightIcon2().setVisibility((!this.mIsRightOutIconsVisiable || TextUtils.isEmpty(this.rightIconRes2)) ? 8 : 0);
                    OSLiquidButton rightIcon = getRightIcon();
                    if (this.mIsRightOutIconsVisiable && !TextUtils.isEmpty(this.rightIconRes)) {
                        i = 0;
                    }
                    rightIcon.setVisibility(i);
                    getLeftIcon().setVisibility(0);
                    H(scaleHeight);
                    S();
                }
                break;
            case 2:
                OSAutoCompleteTextView oSAutoCompleteTextView13 = this.searchEditText;
                if (oSAutoCompleteTextView13 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView13 = null;
                }
                oSAutoCompleteTextView13.setFocusable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView14 = this.searchEditText;
                if (oSAutoCompleteTextView14 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView14 = null;
                }
                oSAutoCompleteTextView14.setLongClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView15 = this.searchEditText;
                if (oSAutoCompleteTextView15 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView15 = null;
                }
                oSAutoCompleteTextView15.setFocusableInTouchMode(true);
                OSAutoCompleteTextView oSAutoCompleteTextView16 = this.searchEditText;
                if (oSAutoCompleteTextView16 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView16 = null;
                }
                oSAutoCompleteTextView16.setClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView17 = this.searchEditText;
                if (oSAutoCompleteTextView17 == null) {
                    y45.B("searchEditText");
                } else {
                    oSAutoCompleteTextView = oSAutoCompleteTextView17;
                }
                oSAutoCompleteTextView.setShouldInterceptEvents(true);
                getEditeTextContainer().detachPressAnim();
                getLeftIcon().setVisibility(8);
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                ViewGroup.LayoutParams layoutParams5 = getEditeTextContainer().getLayoutParams();
                y45.h(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.LayoutParams layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams5;
                layoutParams6.setMarginStart(getEditeDefaultMarginStart());
                layoutParams6.setMarginEnd(getEditeDefaultMarginEnd());
                getEditeTextContainer().setLayoutParams(layoutParams6);
                if (!olb.P) {
                    getEditeTextContainer().setClickable(false);
                }
                S();
                break;
            case 3:
                jv9 jv9Var = this.expandAnimator;
                if (jv9Var != null) {
                    jv9Var.c();
                    zfb zfbVar = zfb.a;
                }
                jv9 jv9Var2 = this.composeExitAnimator;
                if (jv9Var2 != null) {
                    jv9Var2.c();
                    zfb zfbVar2 = zfb.a;
                }
                OSAutoCompleteTextView oSAutoCompleteTextView18 = this.searchEditText;
                if (oSAutoCompleteTextView18 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView18 = null;
                }
                oSAutoCompleteTextView18.setFocusable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView19 = this.searchEditText;
                if (oSAutoCompleteTextView19 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView19 = null;
                }
                oSAutoCompleteTextView19.setLongClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView20 = this.searchEditText;
                if (oSAutoCompleteTextView20 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView20 = null;
                }
                oSAutoCompleteTextView20.setFocusableInTouchMode(false);
                OSAutoCompleteTextView oSAutoCompleteTextView21 = this.searchEditText;
                if (oSAutoCompleteTextView21 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView21 = null;
                }
                oSAutoCompleteTextView21.setClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView22 = this.searchEditText;
                if (oSAutoCompleteTextView22 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView22 = null;
                }
                oSAutoCompleteTextView22.setShouldInterceptEvents(false);
                getEditeTextContainer().setClickable(true);
                getEditeTextContainer().attachPressAnim();
                getEditeTextContainer().setScaleRatio(1.25f);
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                if (animation) {
                    getButtonMode().setVisibility(0);
                    getLeftIcon().setVisibility(0);
                    OSAutoCompleteTextView oSAutoCompleteTextView23 = this.searchEditText;
                    if (oSAutoCompleteTextView23 == null) {
                        y45.B("searchEditText");
                        oSAutoCompleteTextView23 = null;
                    }
                    oSAutoCompleteTextView23.setVisibility(0);
                    getInnerLeftIcon().setVisibility(0);
                    getInnerRightIcon().setVisibility(8);
                    getLeftIcon().setAlpha(1.0f);
                    OSAutoCompleteTextView oSAutoCompleteTextView24 = this.searchEditText;
                    if (oSAutoCompleteTextView24 == null) {
                        y45.B("searchEditText");
                        oSAutoCompleteTextView24 = null;
                    }
                    oSAutoCompleteTextView24.setAlpha(1.0f);
                    getInnerLeftIcon().setAlpha(1.0f);
                    getInnerRightIcon().setAlpha(0.0f);
                    getButtonMode().setAlpha(0.0f);
                    exitSearchStateCompose();
                } else {
                    getButtonMode().setVisibility(0);
                    OSAutoCompleteTextView oSAutoCompleteTextView25 = this.searchEditText;
                    if (oSAutoCompleteTextView25 == null) {
                        y45.B("searchEditText");
                        oSAutoCompleteTextView25 = null;
                    }
                    oSAutoCompleteTextView25.setVisibility(8);
                    getLeftIcon().setVisibility(8);
                    getInnerLeftIcon().setVisibility(8);
                    getInnerRightIcon().setVisibility(8);
                    ViewGroup.LayoutParams layoutParams7 = getEditeTextContainer().getLayoutParams();
                    y45.h(layoutParams7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.LayoutParams layoutParams8 = (ConstraintLayout.LayoutParams) layoutParams7;
                    ((ViewGroup.MarginLayoutParams) layoutParams8).width = getButtonModeHeight();
                    ((ViewGroup.MarginLayoutParams) layoutParams8).height = getButtonModeHeight();
                    getEditeTextContainer().setLayoutParams(layoutParams8);
                }
                OSAutoCompleteTextView oSAutoCompleteTextView26 = this.searchEditText;
                if (oSAutoCompleteTextView26 == null) {
                    y45.B("searchEditText");
                } else {
                    oSAutoCompleteTextView = oSAutoCompleteTextView26;
                }
                oSAutoCompleteTextView.clearFocus();
                hideKeyboard();
                break;
            case 4:
                jv9 jv9Var3 = this.expandAnimator;
                if (jv9Var3 != null) {
                    jv9Var3.c();
                    zfb zfbVar3 = zfb.a;
                }
                jv9 jv9Var4 = this.composeExitAnimator;
                if (jv9Var4 != null) {
                    jv9Var4.c();
                    zfb zfbVar4 = zfb.a;
                }
                OSAutoCompleteTextView oSAutoCompleteTextView27 = this.searchEditText;
                if (oSAutoCompleteTextView27 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView27 = null;
                }
                oSAutoCompleteTextView27.setFocusable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView28 = this.searchEditText;
                if (oSAutoCompleteTextView28 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView28 = null;
                }
                oSAutoCompleteTextView28.setLongClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView29 = this.searchEditText;
                if (oSAutoCompleteTextView29 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView29 = null;
                }
                oSAutoCompleteTextView29.setFocusableInTouchMode(true);
                OSAutoCompleteTextView oSAutoCompleteTextView30 = this.searchEditText;
                if (oSAutoCompleteTextView30 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView30 = null;
                }
                oSAutoCompleteTextView30.setClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView31 = this.searchEditText;
                if (oSAutoCompleteTextView31 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView31 = null;
                }
                oSAutoCompleteTextView31.setShouldInterceptEvents(true);
                if (!olb.P) {
                    getEditeTextContainer().setClickable(false);
                }
                getEditeTextContainer().detachPressAnim();
                getEditeTextContainer().setScaleRatio(1.05f);
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                getLeftIcon().setVisibility(0);
                if (animation) {
                    x();
                    getButtonMode().setVisibility(fromState == 3 ? 0 : 8);
                    getButtonMode().setAlpha(fromState == 3 ? 1.0f : 0.0f);
                    OSAutoCompleteTextView oSAutoCompleteTextView32 = this.searchEditText;
                    if (oSAutoCompleteTextView32 == null) {
                        y45.B("searchEditText");
                        oSAutoCompleteTextView32 = null;
                    }
                    oSAutoCompleteTextView32.setVisibility(0);
                    getInnerLeftIcon().setVisibility(0);
                    y(this.mCurrentSearchState);
                    if (fromState == 3) {
                        goSearchStateForCompose$default(this, false, 1, null);
                    }
                } else {
                    getButtonMode().setVisibility(8);
                    OSAutoCompleteTextView oSAutoCompleteTextView33 = this.searchEditText;
                    if (oSAutoCompleteTextView33 == null) {
                        y45.B("searchEditText");
                    } else {
                        oSAutoCompleteTextView = oSAutoCompleteTextView33;
                    }
                    oSAutoCompleteTextView.setVisibility(0);
                    getInnerLeftIcon().setVisibility(0);
                    getLeftIcon().setAlpha(1.0f);
                    post(new Runnable() {
                        @Override
                        public final void run() {
                            OSLiquidSearchBar.setSearchBarState$lambda$32(this.b);
                        }
                    });
                }
                S();
                break;
            case 5:
                jv9 jv9Var5 = this.expandAnimator;
                if (jv9Var5 != null) {
                    jv9Var5.c();
                    zfb zfbVar5 = zfb.a;
                }
                jv9 jv9Var6 = this.composeExitAnimator;
                if (jv9Var6 != null) {
                    jv9Var6.c();
                    zfb zfbVar6 = zfb.a;
                }
                OSAutoCompleteTextView oSAutoCompleteTextView34 = this.searchEditText;
                if (oSAutoCompleteTextView34 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView34 = null;
                }
                oSAutoCompleteTextView34.setFocusable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView35 = this.searchEditText;
                if (oSAutoCompleteTextView35 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView35 = null;
                }
                oSAutoCompleteTextView35.setLongClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView36 = this.searchEditText;
                if (oSAutoCompleteTextView36 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView36 = null;
                }
                oSAutoCompleteTextView36.setFocusableInTouchMode(false);
                OSAutoCompleteTextView oSAutoCompleteTextView37 = this.searchEditText;
                if (oSAutoCompleteTextView37 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView37 = null;
                }
                oSAutoCompleteTextView37.setClickable(false);
                OSAutoCompleteTextView oSAutoCompleteTextView38 = this.searchEditText;
                if (oSAutoCompleteTextView38 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView38 = null;
                }
                oSAutoCompleteTextView38.setShouldInterceptEvents(false);
                getEditeTextContainer().setClickable(true);
                getEditeTextContainer().attachPressAnim();
                getEditeTextContainer().setScaleRatio(1.05f);
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                getButtonMode().setVisibility(0);
                OSAutoCompleteTextView oSAutoCompleteTextView39 = this.searchEditText;
                if (oSAutoCompleteTextView39 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView39 = null;
                }
                oSAutoCompleteTextView39.setVisibility(0);
                getLeftIcon().setVisibility(8);
                getInnerRightIcon().setVisibility(8);
                getInnerLeftIcon().setVisibility(0);
                if (animation) {
                    getButtonMode().setVisibility(0);
                    scaleButtonMode(false);
                    goSearchStateForCompose(false);
                } else {
                    getButtonMode().setVisibility(8);
                    post(new Runnable() {
                        @Override
                        public final void run() {
                            OSLiquidSearchBar.setSearchBarState$lambda$30(this.b);
                        }
                    });
                }
                OSAutoCompleteTextView oSAutoCompleteTextView40 = this.searchEditText;
                if (oSAutoCompleteTextView40 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView40 = null;
                }
                oSAutoCompleteTextView40.setAlpha(1.0f);
                getButtonMode().setAlpha(1.0f);
                OSAutoCompleteTextView oSAutoCompleteTextView41 = this.searchEditText;
                if (oSAutoCompleteTextView41 == null) {
                    y45.B("searchEditText");
                } else {
                    oSAutoCompleteTextView = oSAutoCompleteTextView41;
                }
                oSAutoCompleteTextView.clearFocus();
                hideKeyboard();
                break;
            case 6:
                OSAutoCompleteTextView oSAutoCompleteTextView42 = this.searchEditText;
                if (oSAutoCompleteTextView42 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView42 = null;
                }
                oSAutoCompleteTextView42.setFocusable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView43 = this.searchEditText;
                if (oSAutoCompleteTextView43 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView43 = null;
                }
                oSAutoCompleteTextView43.setLongClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView44 = this.searchEditText;
                if (oSAutoCompleteTextView44 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView44 = null;
                }
                oSAutoCompleteTextView44.setFocusableInTouchMode(true);
                OSAutoCompleteTextView oSAutoCompleteTextView45 = this.searchEditText;
                if (oSAutoCompleteTextView45 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView45 = null;
                }
                oSAutoCompleteTextView45.setClickable(true);
                OSAutoCompleteTextView oSAutoCompleteTextView46 = this.searchEditText;
                if (oSAutoCompleteTextView46 == null) {
                    y45.B("searchEditText");
                    oSAutoCompleteTextView46 = null;
                }
                oSAutoCompleteTextView46.setShouldInterceptEvents(true);
                if (!olb.P) {
                    getEditeTextContainer().setClickable(false);
                }
                getEditeTextContainer().detachPressAnim();
                getRightIcon2().setVisibility(8);
                getRightIcon().setVisibility(8);
                if (!animation) {
                    OSAutoCompleteTextView oSAutoCompleteTextView47 = this.searchEditText;
                    if (oSAutoCompleteTextView47 == null) {
                        y45.B("searchEditText");
                        oSAutoCompleteTextView47 = null;
                    }
                    oSAutoCompleteTextView47.setFocusable(false);
                    ViewGroup.LayoutParams layoutParams9 = getEditeTextContainer().getLayoutParams();
                    y45.h(layoutParams9, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.LayoutParams layoutParams10 = (ConstraintLayout.LayoutParams) layoutParams9;
                    layoutParams10.setMarginStart(getEditeTotalMarginStart());
                    layoutParams10.setMarginEnd(F(true));
                    getEditeTextContainer().setLayoutParams(layoutParams10);
                    OSAutoCompleteTextView oSAutoCompleteTextView48 = this.searchEditText;
                    if (oSAutoCompleteTextView48 == null) {
                        y45.B("searchEditText");
                    } else {
                        oSAutoCompleteTextView = oSAutoCompleteTextView48;
                    }
                    oSAutoCompleteTextView.clearFocus();
                    hideKeyboard();
                } else {
                    getRightIcon2().setVisibility(8);
                    getRightIcon().setVisibility(8);
                    getLeftIcon().setVisibility(0);
                    OSAutoCompleteTextView oSAutoCompleteTextView49 = this.searchEditText;
                    if (oSAutoCompleteTextView49 == null) {
                        y45.B("searchEditText");
                    } else {
                        oSAutoCompleteTextView = oSAutoCompleteTextView49;
                    }
                    oSAutoCompleteTextView.setShouldInterceptEvents(false);
                    H(scaleHeight);
                    S();
                }
                break;
        }
    }

    public final void setText(String text) {
        y45.j(text, "text");
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setText(text);
    }

    public final void setTextHeightElegant(boolean elegant) {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setElegantTextHeight(elegant);
    }

    public final jv9 startSearchForTransition(float scale, float offset) {
        setSearchBarState(this.mCurrentSearchState, 1, true, Boolean.TRUE);
        return this.expandAnimator;
    }

    public final OSIconTextView t(int id, int size, String iconText, int textColor, int textSize, int visibleState) {
        Context context = getContext();
        y45.i(context, "context");
        OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
        oSIconTextView.setId(id);
        oSIconTextView.setClickable(false);
        oSIconTextView.setText(iconText);
        oSIconTextView.setTextColor(textColor);
        oSIconTextView.setTextSize(0, textSize);
        oSIconTextView.setVisibility(visibleState);
        oSIconTextView.setLayoutParams(new LinearLayout.LayoutParams(size, size));
        return oSIconTextView;
    }

    public final OSLiquidButton u(int id, String iconText) {
        Context context = getContext();
        y45.i(context, "context");
        OSLiquidButton oSLiquidButton = new OSLiquidButton(context, null, 0, 6, null);
        oSLiquidButton.setId(id);
        oSLiquidButton.setVisibility(8);
        oSLiquidButton.setSupportIconMirror(true);
        oSLiquidButton.setIcon(iconText);
        oSLiquidButton.setIconSize(R.dimen.os_search_bar_icon_out_size);
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(olb.m(oSLiquidButton.getContext(), R.attr.os_icon_primary, R.color.os_icon_primary_hios));
        y45.i(colorStateListValueOf, "valueOf(\n               …y_hios)\n                )");
        oSLiquidButton.setIconColor(colorStateListValueOf);
        return oSLiquidButton;
    }

    public final void v() {
        Resources resources = getResources();
        int i = R.dimen.os_space125;
        int dimensionPixelSize = resources.getDimensionPixelSize(i);
        Resources resources2 = getResources();
        int i2 = R.dimen.os_space200;
        int dimensionPixelSize2 = resources2.getDimensionPixelSize(i2);
        ConstraintLayout constraintLayout = new ConstraintLayout(getContext());
        constraintLayout.setClipChildren(false);
        constraintLayout.setClipToPadding(false);
        constraintLayout.setPadding(dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize);
        addView(constraintLayout, new FrameLayout.LayoutParams(-1, -2));
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_search_bar_out_icon_size);
        int i3 = R.id.left_icon;
        String string = getResources().getString(R.string.os_back);
        y45.i(string, "resources.getString(R.string.os_back)");
        View viewU = u(i3, string);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(dimensionPixelSize3, dimensionPixelSize3);
        layoutParams.startToStart = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        zfb zfbVar = zfb.a;
        constraintLayout.addView(viewU, layoutParams);
        int i4 = R.id.right_icon_2;
        Resources resources3 = getResources();
        int i5 = R.string.os_add;
        String string2 = resources3.getString(i5);
        y45.i(string2, "resources.getString(R.string.os_add)");
        View viewU2 = u(i4, string2);
        ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(dimensionPixelSize3, dimensionPixelSize3);
        int i6 = R.id.right_icon;
        layoutParams2.endToStart = i6;
        layoutParams2.topToTop = 0;
        layoutParams2.bottomToBottom = 0;
        Resources resources4 = getResources();
        int i7 = R.dimen.os_space150;
        layoutParams2.setMarginEnd(resources4.getDimensionPixelSize(i7));
        constraintLayout.addView(viewU2, layoutParams2);
        String string3 = getResources().getString(i5);
        y45.i(string3, "resources.getString(R.string.os_add)");
        View viewU3 = u(i6, string3);
        ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(dimensionPixelSize3, dimensionPixelSize3);
        layoutParams3.endToEnd = 0;
        layoutParams3.topToTop = 0;
        layoutParams3.bottomToBottom = 0;
        layoutParams3.setMarginEnd(getResources().getDimensionPixelSize(i7));
        constraintLayout.addView(viewU3, layoutParams3);
        Context context = getContext();
        y45.i(context, "context");
        OSLiquidContainerRootLayout oSLiquidContainerRootLayout = new OSLiquidContainerRootLayout(context, null, 0, 6, null);
        oSLiquidContainerRootLayout.setId(R.id.edite_text_container);
        ConstraintLayout.LayoutParams layoutParams4 = new ConstraintLayout.LayoutParams(-1, dimensionPixelSize3);
        layoutParams4.endToEnd = 0;
        layoutParams4.topToTop = 0;
        layoutParams4.bottomToBottom = 0;
        constraintLayout.addView(oSLiquidContainerRootLayout, layoutParams4);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(linearLayout.getResources().getDimensionPixelSize(i2), 0, linearLayout.getResources().getDimensionPixelSize(i), 0);
        oSLiquidContainerRootLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        int i8 = R.id.inner_left_icon;
        Resources resources5 = getResources();
        int i9 = R.dimen.os_search_bar_icon_inner_cus_size;
        int dimensionPixelSize4 = resources5.getDimensionPixelSize(i9);
        String string4 = getResources().getString(R.string.os_search);
        y45.i(string4, "resources.getString(R.string.os_search)");
        Context context2 = getContext();
        int i10 = R.attr.os_text_tertiary;
        int i11 = R.color.os_text_tertiary_hios;
        linearLayout.addView(t(i8, dimensionPixelSize4, string4, olb.m(context2, i10, i11), getResources().getDimensionPixelSize(i9), 0));
        linearLayout.addView(w(linearLayout));
        int i12 = R.id.inner_right_icon;
        int dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_search_bar_icon_inner_size);
        String string5 = getResources().getString(R.string.os_Close_fill);
        y45.i(string5, "resources.getString(R.string.os_Close_fill)");
        OSIconTextView oSIconTextViewT = t(i12, dimensionPixelSize5, string5, olb.m(getContext(), i10, i11), getResources().getDimensionPixelSize(R.dimen.os_search_bar_icon_inner_close_size), 8);
        ViewGroup.LayoutParams layoutParams5 = oSIconTextViewT.getLayoutParams();
        y45.h(layoutParams5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        ((LinearLayout.LayoutParams) layoutParams5).setMarginStart(oSIconTextViewT.getResources().getDimensionPixelSize(i));
        linearLayout.addView(oSIconTextViewT);
        int dimensionPixelSize6 = getResources().getDimensionPixelSize(R.dimen.os_search_bar_btn_mode_height);
        OSIconTextView oSIconTextViewR = r();
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(dimensionPixelSize6, dimensionPixelSize6);
        layoutParams6.gravity = 8388629;
        oSLiquidContainerRootLayout.addView(oSIconTextViewR, layoutParams6);
    }

    public final View w(ViewGroup parent) {
        if (this.edittextLayoutRes <= -1) {
            OSAutoCompleteTextView oSAutoCompleteTextViewS = s();
            this.searchEditText = oSAutoCompleteTextViewS;
            return oSAutoCompleteTextViewS;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(this.edittextLayoutRes, parent, false);
        View viewFindViewById = viewInflate.findViewById(R.id.search_edit_text);
        if (viewFindViewById == null) {
            throw new IllegalArgumentException("Custom os_search_edittext_layout must contain OSAutoCompleteTextView with id search_edit_text");
        }
        this.searchEditText = (OSAutoCompleteTextView) viewFindViewById;
        y45.i(viewInflate, "view");
        return viewInflate;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    public final void x() {
        int i = 8;
        if (this.mCurrentSearchState == 3) {
            getInnerRightIcon().setVisibility(8);
            return;
        }
        OSIconTextView innerRightIcon = getInnerRightIcon();
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        OSAutoCompleteTextView oSAutoCompleteTextView2 = null;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        if (!TextUtils.isEmpty(oSAutoCompleteTextView.getText())) {
            OSAutoCompleteTextView oSAutoCompleteTextView3 = this.searchEditText;
            if (oSAutoCompleteTextView3 == null) {
                y45.B("searchEditText");
            } else {
                oSAutoCompleteTextView2 = oSAutoCompleteTextView3;
            }
            if (oSAutoCompleteTextView2.getText().toString().length() > 0) {
                changeIcon(getInnerRightIcon(), true, getResources().getString(R.string.os_Close_fill));
            } else if (!TextUtils.isEmpty(this.innerRightIconRes)) {
                changeIcon(getInnerRightIcon(), false, this.innerRightIconRes);
            }
            i = 0;
        } else if (!TextUtils.isEmpty(this.innerRightIconRes)) {
            changeIcon(getInnerRightIcon(), false, this.innerRightIconRes);
            i = 0;
        }
        innerRightIcon.setVisibility(i);
    }

    public final void y(final int fromState) {
        if (this.backIconAlphaAnimInitialized) {
            return;
        }
        this.backIconAlphaAnimInitialized = true;
        getLeftIcon().setAlpha(0.0f);
        ViewCompat.setWindowInsetsAnimationCallback(this, new WindowInsetsAnimationCompat.Callback() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public void onEnd(WindowInsetsAnimationCompat animation) {
                Insets insets;
                y45.j(animation, "animation");
                if ((animation.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                    WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.a);
                    float f = this.a.imeMaxHeight > 0.0f ? ((rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime())) == null) ? 0 : insets.bottom) / this.a.imeMaxHeight : 0.0f;
                    if (fromState == 4) {
                        this.a.getLeftIcon().setAlpha(1.0f);
                    } else {
                        this.a.getLeftIcon().setAlpha(f);
                    }
                }
            }

            @Override
            public WindowInsetsCompat onProgress(WindowInsetsCompat insets, List runningAnimations) {
                float f;
                y45.j(insets, "insets");
                y45.j(runningAnimations, "runningAnimations");
                List list = runningAnimations;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if ((((WindowInsetsAnimationCompat) it.next()).getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                            Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.ime());
                            y45.i(insets2, "insets.getInsets(WindowInsetsCompat.Type.ime())");
                            Insets insetsOf = Insets.of(insets2.left, insets2.top, insets2.right, insets2.bottom);
                            y45.i(insetsOf, "of(\n                    …                        )");
                            float f2 = insetsOf.top - insetsOf.bottom;
                            this.a.setTranslationY(f2);
                            Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.ime());
                            y45.i(insets3, "insets.getInsets(WindowInsetsCompat.Type.ime())");
                            if (this.a.imeMaxHeight > 0.0f) {
                                f = insets3.bottom / this.a.imeMaxHeight;
                            } else {
                                f = insets3.bottom > 0 ? 1.0f : 0.0f;
                            }
                            if (fromState != 4) {
                                if (Math.abs(f2) <= this.a.getHeight() * 2) {
                                    this.a.getLeftIcon().setAlpha(0.0f);
                                    break;
                                }
                                this.a.getLeftIcon().setAlpha(f);
                                break;
                            }
                            this.a.getLeftIcon().setAlpha(1.0f);
                            break;
                        }
                    }
                }
                return insets;
            }
        });
    }

    public final void z(final boolean isEntrance) {
        jv9 jv9Var = this.expandAnimator;
        if (jv9Var != null) {
            jv9Var.c();
        }
        getLeftIconWidth();
        final int editeDefaultMarginStart = getEditeDefaultMarginStart();
        final int editeTotalMarginStart = getEditeTotalMarginStart();
        final boolean zN = N();
        final boolean zM = M();
        final float fH = olb.h(getContext(), 124);
        jv9 jv9Var2 = new jv9(new fz3());
        kv9 kv9Var = new kv9();
        kv9Var.g(0.79f);
        kv9Var.i(400.0f);
        kv9Var.h(fH);
        jv9Var2.z(kv9Var);
        jv9Var2.m(0.0f);
        jv9Var2.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSLiquidSearchBar.A(fH, this, zN, zM, isEntrance, editeTotalMarginStart, editeDefaultMarginStart, f43Var, f, f2);
            }
        });
        jv9Var2.a(new f43.q() {
            @Override
            public final void a(f43 f43Var, boolean z, float f, float f2) {
                OSLiquidSearchBar.B(this.a, f43Var, z, f, f2);
            }
        });
        jv9Var2.p();
        this.expandAnimator = jv9Var2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void setInputMax(int max, String resStr) {
        OSAutoCompleteTextView oSAutoCompleteTextView = this.searchEditText;
        if (oSAutoCompleteTextView == null) {
            y45.B("searchEditText");
            oSAutoCompleteTextView = null;
        }
        oSAutoCompleteTextView.setFilters(new InputFilter[]{new b(getContext(), max, resStr)});
    }

    public OSLiquidSearchBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final jv9 endSearchForTransition(float scale, float offset) {
        setSearchBarState$default(this, this.mCurrentSearchState, 0, true, null, 8, null);
        return this.expandAnimator;
    }

    public final jv9 startSearchForTransition() {
        setSearchBarState(this.mCurrentSearchState, 1, true, Boolean.TRUE);
        return this.expandAnimator;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidSearchBar(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.liquidPressHelper = new u97();
        this.leftIcon = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidButton invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.left_icon);
                OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) viewFindViewById;
                oSLiquidButton.setElasticTypeConfig(ElasticTypeConfig.FOB);
                oSLiquidButton.setLightTypeConfig(LightTypeConfig.SEARCH_BAR_AUTO);
                oSLiquidButton.enableUnionBlur(oSLiquidSearchBar.isUseUnionBlur);
                return oSLiquidButton;
            }
        });
        this.rightIcon = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidButton invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.right_icon);
                OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) viewFindViewById;
                oSLiquidButton.setElasticTypeConfig(ElasticTypeConfig.FOB);
                oSLiquidButton.setLightTypeConfig(LightTypeConfig.SEARCH_BAR_AUTO);
                oSLiquidButton.enableUnionBlur(oSLiquidSearchBar.isUseUnionBlur);
                return oSLiquidButton;
            }
        });
        this.buttonMode = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSIconTextView invoke() {
                OSIconTextView oSIconTextView = (OSIconTextView) this.this$0.findViewById(R.id.button_mode);
                oSIconTextView.setClickable(false);
                return oSIconTextView;
            }
        });
        this.rightIcon2 = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidButton invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.right_icon_2);
                OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                OSLiquidButton oSLiquidButton = (OSLiquidButton) viewFindViewById;
                oSLiquidButton.setElasticTypeConfig(ElasticTypeConfig.FOB);
                oSLiquidButton.setLightTypeConfig(LightTypeConfig.SEARCH_BAR_AUTO);
                oSLiquidButton.enableUnionBlur(oSLiquidSearchBar.isUseUnionBlur);
                return oSLiquidButton;
            }
        });
        this.innerRightIcon = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSIconTextView invoke() {
                return (OSIconTextView) this.this$0.findViewById(R.id.inner_right_icon);
            }
        });
        this.editeTextContainer = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final OSLiquidContainerRootLayout invoke() {
                View viewFindViewById = this.this$0.findViewById(R.id.edite_text_container);
                OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                Context context2 = context;
                OSLiquidContainerRootLayout oSLiquidContainerRootLayout = (OSLiquidContainerRootLayout) viewFindViewById;
                oSLiquidContainerRootLayout.setElasticTypeConfig(ElasticTypeConfig.SEARCH_BAR);
                oSLiquidContainerRootLayout.setLightTypeConfig(LightTypeConfig.SEARCH_BAR_AUTO);
                oSLiquidContainerRootLayout.enabledPressView(true);
                oSLiquidContainerRootLayout.enableUnionBlur(oSLiquidSearchBar.isUseUnionBlur);
                if (olb.g0(context2) && olb.h0(context2)) {
                    oSLiquidContainerRootLayout.getLayoutParams().height = oSLiquidContainerRootLayout.getResources().getDimensionPixelSize(R.dimen.os_pad_search_bar_out_icon_size);
                }
                if (oSLiquidContainerRootLayout.isNightMode()) {
                    oSLiquidContainerRootLayout.getOsPressView().setFillColor(Color.parseColor("#14FFFFFF"));
                } else {
                    oSLiquidContainerRootLayout.getOsPressView().setFillColor(Color.parseColor("#CCFFFFFF"));
                }
                return oSLiquidContainerRootLayout;
            }
        });
        this.innerLeftIcon = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSIconTextView invoke() {
                return (OSIconTextView) this.this$0.findViewById(R.id.inner_left_icon);
            }
        });
        this.mTextWatcher = new c();
        this.hintText = "";
        this.buttonModeIconRes = "";
        this.showRightIcon = true;
        this.singleIconDimen = 60;
        this.edittextLayoutRes = -1;
        this.imeMaxHeight = 959.0f;
        this.mSearchBarClickListener = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((View) obj);
                return zfb.a;
            }

            public final void invoke(View view) {
                y45.j(view, "it");
                if (this.this$0.mCurrentSearchState == 0) {
                    OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                    OSLiquidSearchBar.setSearchBarState$default(oSLiquidSearchBar, oSLiquidSearchBar.mCurrentSearchState, 1, true, null, 8, null);
                } else if (this.this$0.mCurrentSearchState == 6) {
                    OSLiquidSearchBar oSLiquidSearchBar2 = this.this$0;
                    OSLiquidSearchBar.setSearchBarState$default(oSLiquidSearchBar2, oSLiquidSearchBar2.mCurrentSearchState, 6, true, null, 8, null);
                }
            }
        };
        this.mSearchButtonModeClickListener = new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((View) obj);
                return zfb.a;
            }

            public final void invoke(View view) {
                y45.j(view, "it");
                if (this.this$0.mCurrentSearchState == 3) {
                    OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                    OSLiquidSearchBar.setSearchBarState$default(oSLiquidSearchBar, oSLiquidSearchBar.mCurrentSearchState, 4, false, null, 12, null);
                }
            }
        };
        this.onBackClickListener = new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m128invoke();
                return zfb.a;
            }

            public final void m128invoke() {
                if (this.this$0.mCurrentSearchState == 1) {
                    OSLiquidSearchBar oSLiquidSearchBar = this.this$0;
                    OSLiquidSearchBar.setSearchBarState$default(oSLiquidSearchBar, oSLiquidSearchBar.mCurrentSearchState, 0, true, null, 8, null);
                }
            }
        };
        O(attributeSet);
        P(attributeSet);
        W();
    }
}
