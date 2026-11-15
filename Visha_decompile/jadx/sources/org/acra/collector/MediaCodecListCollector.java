package org.acra.collector;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.hunantv.media.player.MgtvMediaPlayer;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.ts8;
import defpackage.y45;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.ReportField;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u0000 /2\u00020\u0001:\u000201B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0012¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0013¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0013¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\tH\u0013¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001f\u0010 R\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b$\u0010#R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b&\u0010#R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b'\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b(\u0010#R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b)\u0010#R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000b0!8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b*\u0010#R\u0014\u0010.\u001a\u00020+8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00062"}, d2 = {"Lorg/acra/collector/MediaCodecListCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", MethodDecl.initName, "()V", "Lzfb;", "prepare", "Lorg/json/JSONObject;", "collectMediaCodecList", "()Lorg/json/JSONObject;", "Landroid/media/MediaCodecInfo;", "codecInfo", "", "type", "collectCapabilitiesForType", "(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lorg/json/JSONObject;", "Lorg/acra/collector/MediaCodecListCollector$CodecType;", "identifyCodecType", "(Landroid/media/MediaCodecInfo;)Lorg/acra/collector/MediaCodecListCollector$CodecType;", "Lorg/acra/ReportField;", "reportField", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lts8;", "reportBuilder", "Lorg/acra/data/CrashReportData;", TypedValues.AttributesType.S_TARGET, "collect", "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V", "", "shouldCollect", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z", "Landroid/util/SparseArray;", "mColorFormatValues", "Landroid/util/SparseArray;", "mAVCLevelValues", "mAVCProfileValues", "mH263LevelValues", "mH263ProfileValues", "mMPEG4LevelValues", "mMPEG4ProfileValues", "mAACProfileValues", "Lorg/acra/collector/Collector$Order;", "getOrder", "()Lorg/acra/collector/Collector$Order;", "order", "Companion", "CodecType", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class MediaCodecListCollector extends BaseReportFieldCollector {
    private static final String COLOR_FORMAT_PREFIX = "COLOR_";
    private final SparseArray<String> mAACProfileValues;
    private final SparseArray<String> mAVCLevelValues;
    private final SparseArray<String> mAVCProfileValues;
    private final SparseArray<String> mColorFormatValues;
    private final SparseArray<String> mH263LevelValues;
    private final SparseArray<String> mH263ProfileValues;
    private final SparseArray<String> mMPEG4LevelValues;
    private final SparseArray<String> mMPEG4ProfileValues;
    private static final String[] MPEG4_TYPES = {"mp4", MgtvMediaPlayer.DataSourceInfo.MPEG4, "MP4", "MPEG4"};
    private static final String[] AVC_TYPES = {"avc", MgtvMediaPlayer.DataSourceInfo.H264, "AVC", "H264"};
    private static final String[] H263_TYPES = {"h263", "H263"};
    private static final String[] AAC_TYPES = {"aac", "AAC"};

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/acra/collector/MediaCodecListCollector$CodecType;", "", "(Ljava/lang/String;I)V", "AVC", "H263", "MPEG4", "AAC", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum CodecType {
        AVC,
        H263,
        MPEG4,
        AAC
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[CodecType.values().length];
            try {
                iArr[CodecType.AVC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CodecType.H263.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CodecType.MPEG4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CodecType.AAC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public MediaCodecListCollector() {
        super(ReportField.MEDIA_CODEC_LIST);
        this.mColorFormatValues = new SparseArray<>();
        this.mAVCLevelValues = new SparseArray<>();
        this.mAVCProfileValues = new SparseArray<>();
        this.mH263LevelValues = new SparseArray<>();
        this.mH263ProfileValues = new SparseArray<>();
        this.mMPEG4LevelValues = new SparseArray<>();
        this.mMPEG4ProfileValues = new SparseArray<>();
        this.mAACProfileValues = new SparseArray<>();
    }

    @TargetApi(16)
    private JSONObject collectCapabilitiesForType(MediaCodecInfo codecInfo, String type) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfo.getCapabilitiesForType(type);
        int[] iArr = capabilitiesForType.colorFormats;
        y45.i(iArr, "colorFormats");
        if (!(iArr.length == 0)) {
            JSONArray jSONArray = new JSONArray();
            for (int i : iArr) {
                jSONArray.put(this.mColorFormatValues.get(i));
            }
            jSONObject.put("colorFormats", jSONArray);
        }
        CodecType codecTypeIdentifyCodecType = identifyCodecType(codecInfo);
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = capabilitiesForType.profileLevels;
        y45.i(codecProfileLevelArr, "codecProfileLevels");
        if (!(codecProfileLevelArr.length == 0)) {
            JSONArray jSONArray2 = new JSONArray();
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                int i2 = codecProfileLevel.profile;
                int i3 = codecProfileLevel.level;
                if (codecTypeIdentifyCodecType == null) {
                    jSONArray2.put(i2 + 45 + i3);
                    break;
                }
                int i4 = b.a[codecTypeIdentifyCodecType.ordinal()];
                if (i4 == 1) {
                    jSONArray2.put(i2 + ((Object) this.mAVCProfileValues.get(i2)) + "-" + ((Object) this.mAVCLevelValues.get(i3)));
                } else if (i4 == 2) {
                    jSONArray2.put(((Object) this.mH263ProfileValues.get(i2)) + "-" + ((Object) this.mH263LevelValues.get(i3)));
                } else if (i4 == 3) {
                    jSONArray2.put(((Object) this.mMPEG4ProfileValues.get(i2)) + "-" + ((Object) this.mMPEG4LevelValues.get(i3)));
                } else if (i4 == 4) {
                    jSONArray2.put(this.mAACProfileValues.get(i2));
                }
            }
            jSONObject.put("profileLevels", jSONArray2);
        }
        return jSONObject;
    }

    @TargetApi(16)
    private JSONObject collectMediaCodecList() throws JSONException {
        prepare();
        MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
        y45.i(codecInfos, "MediaCodecList(MediaCode…st.ALL_CODECS).codecInfos");
        JSONObject jSONObject = new JSONObject();
        int length = codecInfos.length;
        for (int i = 0; i < length; i++) {
            MediaCodecInfo mediaCodecInfo = codecInfos[i];
            JSONObject jSONObject2 = new JSONObject();
            y45.g(mediaCodecInfo);
            String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
            jSONObject2.put("name", mediaCodecInfo.getName()).put("isEncoder", mediaCodecInfo.isEncoder());
            JSONObject jSONObject3 = new JSONObject();
            y45.i(supportedTypes, "supportedTypes");
            for (String str : supportedTypes) {
                y45.i(str, "type");
                jSONObject3.put(str, collectCapabilitiesForType(mediaCodecInfo, str));
            }
            jSONObject2.put("supportedTypes", jSONObject3);
            jSONObject.put(String.valueOf(i), jSONObject2);
        }
        return jSONObject;
    }

    @TargetApi(16)
    private CodecType identifyCodecType(MediaCodecInfo codecInfo) {
        String name = codecInfo.getName();
        y45.i(name, "codecInfo.name");
        for (String str : AVC_TYPES) {
            if (j1a.X(name, str, false, 2, null)) {
                return CodecType.AVC;
            }
        }
        for (String str2 : H263_TYPES) {
            if (j1a.X(name, str2, false, 2, null)) {
                return CodecType.H263;
            }
        }
        for (String str3 : MPEG4_TYPES) {
            if (j1a.X(name, str3, false, 2, null)) {
                return CodecType.MPEG4;
            }
        }
        for (String str4 : AAC_TYPES) {
            if (j1a.X(name, str4, false, 2, null)) {
                return CodecType.AAC;
            }
        }
        return null;
    }

    private void prepare() {
        try {
            Field[] fields = Class.forName("android.media.MediaCodecInfo$CodecCapabilities").getFields();
            y45.i(fields, "codecCapabilitiesClass.fields");
            for (Field field : fields) {
                if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                    String name = field.getName();
                    y45.i(name, "f.name");
                    if (g1a.R(name, COLOR_FORMAT_PREFIX, false, 2, null)) {
                        this.mColorFormatValues.put(field.getInt(null), field.getName());
                    }
                }
            }
            Field[] fields2 = Class.forName("android.media.MediaCodecInfo$CodecProfileLevel").getFields();
            y45.i(fields2, "codecProfileLevelClass.fields");
            for (Field field2 : fields2) {
                if (Modifier.isStatic(field2.getModifiers()) && Modifier.isFinal(field2.getModifiers())) {
                    String name2 = field2.getName();
                    y45.i(name2, "f.name");
                    if (g1a.R(name2, "AVCLevel", false, 2, null)) {
                        this.mAVCLevelValues.put(field2.getInt(null), field2.getName());
                    } else {
                        String name3 = field2.getName();
                        y45.i(name3, "f.name");
                        if (g1a.R(name3, "AVCProfile", false, 2, null)) {
                            this.mAVCProfileValues.put(field2.getInt(null), field2.getName());
                        } else {
                            String name4 = field2.getName();
                            y45.i(name4, "f.name");
                            if (g1a.R(name4, "H263Level", false, 2, null)) {
                                this.mH263LevelValues.put(field2.getInt(null), field2.getName());
                            } else {
                                String name5 = field2.getName();
                                y45.i(name5, "f.name");
                                if (g1a.R(name5, "H263Profile", false, 2, null)) {
                                    this.mH263ProfileValues.put(field2.getInt(null), field2.getName());
                                } else {
                                    String name6 = field2.getName();
                                    y45.i(name6, "f.name");
                                    if (g1a.R(name6, "MPEG4Level", false, 2, null)) {
                                        this.mMPEG4LevelValues.put(field2.getInt(null), field2.getName());
                                    } else {
                                        String name7 = field2.getName();
                                        y45.i(name7, "f.name");
                                        if (g1a.R(name7, "MPEG4Profile", false, 2, null)) {
                                            this.mMPEG4ProfileValues.put(field2.getInt(null), field2.getName());
                                        } else {
                                            String name8 = field2.getName();
                                            y45.i(name8, "f.name");
                                            if (g1a.R(name8, "AAC", false, 2, null)) {
                                                this.mAACProfileValues.put(field2.getInt(null), field2.getName());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | SecurityException unused) {
        }
    }

    @Override
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ts8 reportBuilder, CrashReportData target) throws JSONException {
        y45.j(reportField, "reportField");
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(reportBuilder, "reportBuilder");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        target.i(ReportField.MEDIA_CODEC_LIST, collectMediaCodecList());
    }

    @Override
    public boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    @Override
    public Collector.Order getOrder() {
        return Collector.Order.LATE;
    }

    @Override
    public boolean shouldCollect(Context context, CoreConfiguration config, ReportField collect, ts8 reportBuilder) {
        y45.j(context, "context");
        y45.j(config, "config");
        y45.j(collect, "collect");
        y45.j(reportBuilder, "reportBuilder");
        return super.shouldCollect(context, config, collect, reportBuilder);
    }
}
