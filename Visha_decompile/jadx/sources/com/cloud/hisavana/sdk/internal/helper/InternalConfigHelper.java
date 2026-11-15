package com.cloud.hisavana.sdk.internal.helper;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import defpackage.cgc;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;", "", MethodDecl.initName, "()V", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InternalConfigHelper {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ConfigTotalDTO.ExtInfo a() {
            try {
                cgc cgcVarN = cgc.n();
                if (cgcVarN != null) {
                    return cgcVarN.l();
                }
            } catch (Exception unused) {
            }
            return null;
        }

        public Companion() {
        }
    }

    public static final ConfigTotalDTO.ExtInfo getExtInfo() {
        return INSTANCE.a();
    }
}
