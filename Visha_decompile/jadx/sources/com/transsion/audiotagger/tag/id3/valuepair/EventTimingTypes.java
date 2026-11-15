package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import org.mozilla.classfile.ByteCode;

public class EventTimingTypes extends AbstractIntStringValuePair {
    private static EventTimingTypes eventTimingTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private EventTimingTypes() {
        this.idToValue.put((I) 0, "Padding (has no meaning)");
        this.idToValue.put((I) 1, "End of initial silence");
        this.idToValue.put((I) 2, "Intro start");
        this.idToValue.put((I) 3, "Main part start");
        this.idToValue.put((I) 4, "Outro start");
        this.idToValue.put((I) 5, "Outro end");
        this.idToValue.put((I) 6, "Verse start");
        this.idToValue.put((I) 7, "Refrain start");
        this.idToValue.put((I) 8, "Interlude start");
        this.idToValue.put((I) 9, "Theme start");
        this.idToValue.put((I) 10, "Variation start");
        this.idToValue.put((I) 11, "Key change");
        this.idToValue.put((I) 12, "Time change");
        this.idToValue.put((I) 13, "Momentary unwanted noise (Snap, Crackle & Pop)");
        this.idToValue.put((I) 14, "Sustained noise");
        this.idToValue.put((I) 15, "Sustained noise end");
        this.idToValue.put((I) 16, "Intro end");
        this.idToValue.put((I) 17, "Main part end");
        this.idToValue.put((I) 18, "Verse end");
        this.idToValue.put((I) 19, "Refrain end");
        this.idToValue.put((I) 20, "Theme end");
        this.idToValue.put((I) 21, "Profanity");
        this.idToValue.put((I) 22, "Profanity end");
        this.idToValue.put((I) 224, "Not predefined synch 0");
        this.idToValue.put((I) Integer.valueOf(TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE), "Not predefined synch 1");
        this.idToValue.put((I) Integer.valueOf(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK), "Not predefined synch 2");
        this.idToValue.put((I) 227, "Not predefined synch 3");
        this.idToValue.put((I) 228, "Not predefined synch 4");
        this.idToValue.put((I) 229, "Not predefined synch 5");
        this.idToValue.put((I) 230, "Not predefined synch 6");
        this.idToValue.put((I) 231, "Not predefined synch 7");
        this.idToValue.put((I) 232, "Not predefined synch 8");
        this.idToValue.put((I) 233, "Not predefined synch 9");
        this.idToValue.put((I) 234, "Not predefined synch A");
        this.idToValue.put((I) 235, "Not predefined synch B");
        this.idToValue.put((I) 236, "Not predefined synch C");
        this.idToValue.put((I) 237, "Not predefined synch D");
        this.idToValue.put((I) 238, "Not predefined synch E");
        this.idToValue.put((I) 239, "Not predefined synch F");
        this.idToValue.put((I) 253, "Audio end (start of silence)");
        this.idToValue.put((I) Integer.valueOf(ByteCode.IMPDEP1), "Audio file ends");
        createMaps();
    }

    public static EventTimingTypes getInstanceOf() {
        if (eventTimingTypes == null) {
            eventTimingTypes = new EventTimingTypes();
        }
        return eventTimingTypes;
    }
}
