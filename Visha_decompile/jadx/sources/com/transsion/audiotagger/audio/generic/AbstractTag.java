package com.transsion.audiotagger.audio.generic;

import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.images.Artwork;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class AbstractTag implements Tag {
    protected int commonNumber = 0;
    protected Map<String, List<TagField>> fields = new LinkedHashMap();

    @Override
    public void addField(TagField tagField) {
        if (tagField == null) {
            return;
        }
        List<TagField> list = this.fields.get(tagField.getId());
        if (list != null) {
            list.add(tagField);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(tagField);
        this.fields.put(tagField.getId(), arrayList);
        if (tagField.isCommon()) {
            this.commonNumber++;
        }
    }

    @Override
    public abstract TagField createField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException;

    @Override
    public void deleteArtworkField() throws KeyNotFoundException {
        deleteField(FieldKey.COVER_ART);
    }

    @Override
    public abstract void deleteField(FieldKey fieldKey) throws KeyNotFoundException;

    @Override
    public void deleteField(String str) {
        this.fields.remove(str);
    }

    public List<String> getAll(String str) throws KeyNotFoundException {
        ArrayList arrayList = new ArrayList();
        Iterator<TagField> it = getFields(str).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        return arrayList;
    }

    @Override
    public int getFieldCount() {
        Iterator<TagField> fields = getFields();
        int i = 0;
        while (fields.hasNext()) {
            i++;
            fields.next();
        }
        return i;
    }

    @Override
    public int getFieldCountIncludingSubValues() {
        return getFieldCount();
    }

    @Override
    public List<TagField> getFields(String str) {
        List<TagField> list = this.fields.get(str);
        return list == null ? new ArrayList() : list;
    }

    @Override
    public String getFirst(FieldKey fieldKey) throws KeyNotFoundException {
        return getValue(fieldKey, 0);
    }

    @Override
    public Artwork getFirstArtwork() {
        List<Artwork> artworkList = getArtworkList();
        if (artworkList.size() > 0) {
            return artworkList.get(0);
        }
        return null;
    }

    @Override
    public abstract TagField getFirstField(FieldKey fieldKey) throws KeyNotFoundException;

    @Override
    public TagField getFirstField(String str) {
        List<TagField> fields = getFields(str);
        if (fields.size() != 0) {
            return fields.get(0);
        }
        return null;
    }

    public String getItem(String str, int i) {
        List<TagField> fields = getFields(str);
        return fields.size() > i ? fields.get(i).toString() : "";
    }

    @Override
    public boolean hasCommonFields() {
        return this.commonNumber != 0;
    }

    @Override
    public boolean hasField(String str) {
        return getFields(str).size() != 0;
    }

    public abstract boolean isAllowedEncoding(Charset charset);

    @Override
    public boolean isEmpty() {
        return this.fields.size() == 0;
    }

    @Override
    public boolean setEncoding(Charset charset) {
        if (!isAllowedEncoding(charset)) {
            return false;
        }
        Iterator<TagField> fields = getFields();
        while (fields.hasNext()) {
            TagField next = fields.next();
            if (next instanceof TagTextField) {
                ((TagTextField) next).setEncoding(charset);
            }
        }
        return true;
    }

    @Override
    public void setField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        setField(createField(fieldKey, strArr));
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Tag content:\n");
        Iterator<TagField> fields = getFields();
        while (fields.hasNext()) {
            TagField next = fields.next();
            stringBuffer.append("\t");
            stringBuffer.append(next.getId());
            stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            stringBuffer.append(next.toString());
            stringBuffer.append("\n");
        }
        return stringBuffer.toString().substring(0, stringBuffer.length() - 1);
    }

    @Override
    public String getFirst(String str) {
        List<TagField> fields = getFields(str);
        return fields.size() != 0 ? fields.get(0).toString() : "";
    }

    @Override
    public boolean hasField(FieldKey fieldKey) {
        return hasField(fieldKey.name());
    }

    @Override
    public Iterator<TagField> getFields() {
        final Iterator<Map.Entry<String, List<TagField>>> it = this.fields.entrySet().iterator();
        return new Iterator<TagField>() {
            private Iterator<TagField> fieldsIt;

            private void changeIt() {
                if (it.hasNext()) {
                    this.fieldsIt = ((List) ((Map.Entry) it.next()).getValue()).iterator();
                }
            }

            @Override
            public boolean hasNext() {
                Iterator<TagField> it2;
                if (this.fieldsIt == null) {
                    changeIt();
                }
                return it.hasNext() || ((it2 = this.fieldsIt) != null && it2.hasNext());
            }

            @Override
            public void remove() {
                this.fieldsIt.remove();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TagField next() {
                if (!this.fieldsIt.hasNext()) {
                    changeIt();
                }
                return this.fieldsIt.next();
            }
        };
    }

    @Override
    public void setField(TagField tagField) {
        if (tagField == null) {
            return;
        }
        List<TagField> list = this.fields.get(tagField.getId());
        if (list != null) {
            list.set(0, tagField);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(tagField);
        this.fields.put(tagField.getId(), arrayList);
        if (tagField.isCommon()) {
            this.commonNumber++;
        }
    }

    public List<TagField> getAll() {
        ArrayList arrayList = new ArrayList();
        Iterator<List<TagField>> it = this.fields.values().iterator();
        while (it.hasNext()) {
            Iterator<TagField> it2 = it.next().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
        return arrayList;
    }

    @Override
    public void addField(FieldKey fieldKey, String... strArr) throws FieldDataInvalidException, KeyNotFoundException {
        addField(createField(fieldKey, strArr));
    }

    @Override
    public void addField(Artwork artwork) throws FieldDataInvalidException {
        addField(createField(artwork));
    }

    @Override
    public void setField(Artwork artwork) throws FieldDataInvalidException {
        setField(createField(artwork));
    }
}
