package defpackage;

import com.grack.nanojson.JsonObject;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.stream.StreamExtractor;

public class r60 extends l70 {
    public final JsonObject b;
    public List c;
    public final StreamingService d;

    public r60(JsonObject jsonObject, String str, StreamingService streamingService) {
        super(str);
        this.b = jsonObject;
        this.d = streamingService;
        this.c = Collections.emptyList();
    }

    @Override
    public String b() {
        return "";
    }

    @Override
    public long getDuration() {
        return this.b.getLong("duration");
    }

    @Override
    public String getName() {
        return this.b.getString("title");
    }

    @Override
    public String getUrl() {
        String string = this.b.getString("title_link");
        if (string == null) {
            return null;
        }
        return a() + string;
    }

    @Override
    public List j() throws ParsingException {
        if (!this.c.isEmpty() || getUrl() == null) {
            return this.c;
        }
        try {
            StreamExtractor streamExtractorS = this.d.s(getUrl());
            streamExtractorS.b();
            return streamExtractorS.R();
        } catch (IOException | ExtractionException e) {
            throw new ParsingException("Could not download cover art location", e);
        }
    }

    public r60(JsonObject jsonObject, String str, List list) {
        this(jsonObject, str, (StreamingService) null);
        this.c = list;
    }
}
