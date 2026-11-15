package fg;

import com.alibaba.fastjson.serializer.SerializerFeature;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.k;

public class b implements k {

    private static final MediaType f60171a = MediaType.parse("application/json; charset=UTF-8");

    @Override
    public RequestBody convert(Object obj) {
        return RequestBody.create(f60171a, com.alibaba.fastjson.a.toJSONBytes(obj, new SerializerFeature[0]));
    }
}
