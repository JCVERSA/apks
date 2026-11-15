package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;

final class AssetListParser implements ParsingLoadable.Parser<AssetList> {
    private static final String ASSET_LIST_JSON_NAME_ASSET_ARRAY = "ASSETS";
    private static final String ASSET_LIST_JSON_NAME_DURATION = "DURATION";
    private static final String ASSET_LIST_JSON_NAME_URI = "URI";

    public static final class Asset {
        public final long durationUs;
        public final Uri uri;

        public Asset(Uri uri, long j) {
            this.uri = uri;
            this.durationUs = j;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Asset)) {
                return false;
            }
            Asset asset = (Asset) obj;
            return this.durationUs == asset.durationUs && Objects.equals(this.uri, asset.uri);
        }

        public int hashCode() {
            return Objects.hash(this.uri, Long.valueOf(this.durationUs));
        }
    }

    public static final class AssetList {
        private static final AssetList EMPTY = new AssetList(ImmutableList.of(), ImmutableList.of());
        public final ImmutableList<Asset> assets;
        public final ImmutableList<StringAttribute> stringAttributes;

        public AssetList(ImmutableList<Asset> immutableList, ImmutableList<StringAttribute> immutableList2) {
            this.assets = immutableList;
            this.stringAttributes = immutableList2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssetList)) {
                return false;
            }
            AssetList assetList = (AssetList) obj;
            return Objects.equals(this.assets, assetList.assets) && Objects.equals(this.stringAttributes, assetList.stringAttributes);
        }

        public int hashCode() {
            return Objects.hash(this.assets, this.stringAttributes);
        }
    }

    public static final class StringAttribute {
        public final String name;
        public final String value;

        public StringAttribute(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StringAttribute)) {
                return false;
            }
            StringAttribute stringAttribute = (StringAttribute) obj;
            return Objects.equals(this.name, stringAttribute.name) && Objects.equals(this.value, stringAttribute.value);
        }

        public int hashCode() {
            return Objects.hash(this.name, this.value);
        }
    }

    private static void parseAssetArray(JsonReader jsonReader, ImmutableList.a aVar) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            if (jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                parseAssetObject(jsonReader, aVar);
            }
        }
        jsonReader.endArray();
    }

    private static void parseAssetObject(JsonReader jsonReader, ImmutableList.a aVar) throws IOException {
        jsonReader.beginObject();
        String strNextString = null;
        long jNextDouble = -9223372036854775807L;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals(ASSET_LIST_JSON_NAME_URI) && jsonReader.peek() == JsonToken.STRING) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals(ASSET_LIST_JSON_NAME_DURATION) && jsonReader.peek() == JsonToken.NUMBER) {
                jNextDouble = (long) (jsonReader.nextDouble() * 1000000.0d);
            } else {
                jsonReader.skipValue();
            }
        }
        if (strNextString != null && jNextDouble != C.TIME_UNSET) {
            aVar.a(new Asset(Uri.parse(strNextString), jNextDouble));
        }
        jsonReader.endObject();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public AssetList parse(Uri uri, InputStream inputStream) throws IOException {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream));
        try {
            if (jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                AssetList assetList = AssetList.EMPTY;
                jsonReader.close();
                return assetList;
            }
            ImmutableList.a aVar = new ImmutableList.a();
            ImmutableList.a aVar2 = new ImmutableList.a();
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.peek().equals(JsonToken.NAME)) {
                    String strNextName = jsonReader.nextName();
                    if (strNextName.equals(ASSET_LIST_JSON_NAME_ASSET_ARRAY) && jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                        parseAssetArray(jsonReader, aVar);
                    } else if (jsonReader.peek() == JsonToken.STRING) {
                        aVar2.a(new StringAttribute(strNextName, jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            AssetList assetList2 = new AssetList(aVar.e(), aVar2.e());
            jsonReader.close();
            return assetList2;
        } catch (Throwable th) {
            try {
                jsonReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
