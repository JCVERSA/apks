package com.transsion.cloud_drive.base.utils.jsonadapters;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.e;
import defpackage.j1a;
import defpackage.rc5;
import defpackage.uoa;
import defpackage.y45;
import defpackage.z64;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;", "Lcom/squareup/moshi/e;", "Ljava/time/LocalDateTime;", MethodDecl.initName, "()V", "Lcom/squareup/moshi/JsonReader;", "reader", "fromJson", "(Lcom/squareup/moshi/JsonReader;)Ljava/time/LocalDateTime;", "Lrc5;", "writer", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "toJson", "(Lrc5;Ljava/time/LocalDateTime;)V", "Ljava/time/format/DateTimeFormatter;", "kotlin.jvm.PlatformType", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/time/format/DateTimeFormatter;", "formatter", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalDateTimeAdapter extends e {

    public final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

    @Override
    @z64
    public LocalDateTime fromJson(JsonReader reader) {
        y45.j(reader, "reader");
        if (reader.K() == JsonReader.Token.NULL) {
            return (LocalDateTime) reader.H();
        }
        String strI = reader.I();
        y45.i(strI, "nextString(...)");
        if (j1a.o0(strI)) {
            return null;
        }
        return LocalDateTime.ofInstant(Instant.parse(strI), ZoneId.of(ZoneOffset.UTC.getId()));
    }

    @Override
    @uoa
    public void toJson(rc5 writer, LocalDateTime value) {
        y45.j(writer, "writer");
        if (value == null) {
            writer.E();
        } else {
            writer.Q(value.format(this.formatter));
        }
    }
}
