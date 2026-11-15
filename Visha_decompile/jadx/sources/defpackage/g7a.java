package defpackage;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.io.IOException;
import java.io.InputStream;

public class g7a implements ResourceDecoder {
    @Override
    public Resource decode(InputStream inputStream, int i, int i2, Options options) throws IOException {
        try {
            SVG svgL = SVG.l(inputStream);
            if (i != Integer.MIN_VALUE) {
                svgL.y(i);
            }
            if (i2 != Integer.MIN_VALUE) {
                svgL.w(i2);
            }
            return new SimpleResource(svgL);
        } catch (SVGParseException e) {
            throw new IOException("Cannot load SVG from stream", e);
        }
    }

    @Override
    public boolean handles(InputStream inputStream, Options options) {
        return true;
    }
}
