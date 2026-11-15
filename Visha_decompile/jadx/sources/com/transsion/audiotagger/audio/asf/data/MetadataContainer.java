package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.io.WriteableChunk;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MetadataContainer extends Chunk implements WriteableChunk {
    static final boolean $assertionsDisabled = false;
    private final ContainerType containerType;
    private final Map<DescriptorPointer, List<MetadataDescriptor>> descriptors;
    private final DescriptorPointer perfPoint;

    public static final class DescriptorPointer {
        static final boolean $assertionsDisabled = false;
        private MetadataDescriptor desc;

        public DescriptorPointer(MetadataDescriptor metadataDescriptor) {
            setDescriptor(metadataDescriptor);
        }

        public boolean equals(Object obj) {
            boolean z = obj == this;
            if (!(obj instanceof DescriptorPointer) || z) {
                return z;
            }
            MetadataDescriptor metadataDescriptor = ((DescriptorPointer) obj).desc;
            return this.desc.getName().equals(metadataDescriptor.getName()) & (this.desc.getLanguageIndex() == metadataDescriptor.getLanguageIndex()) & (this.desc.getStreamNumber() == metadataDescriptor.getStreamNumber());
        }

        public int hashCode() {
            return (((this.desc.getName().hashCode() * 31) + this.desc.getLanguageIndex()) * 31) + this.desc.getStreamNumber();
        }

        public DescriptorPointer setDescriptor(MetadataDescriptor metadataDescriptor) {
            this.desc = metadataDescriptor;
            return this;
        }
    }

    public MetadataContainer(ContainerType containerType) {
        this(containerType, 0L, BigInteger.ZERO);
    }

    private static ContainerType determineType(GUID guid) throws IllegalArgumentException {
        ContainerType containerType;
        ContainerType[] containerTypeArrValues = ContainerType.values();
        int length = containerTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                containerType = null;
                break;
            }
            containerType = containerTypeArrValues[i];
            if (containerType.getContainerGUID().equals(guid)) {
                break;
            }
            i++;
        }
        if (containerType != null) {
            return containerType;
        }
        throw new IllegalArgumentException("Unknown metadata container specified by GUID (" + guid.toString() + ")");
    }

    public final void addDescriptor(MetadataDescriptor metadataDescriptor) throws IllegalArgumentException {
        List<MetadataDescriptor> arrayList;
        this.containerType.assertConstraints(metadataDescriptor.getName(), metadataDescriptor.getRawData(), metadataDescriptor.getType(), metadataDescriptor.getStreamNumber(), metadataDescriptor.getLanguageIndex());
        if (!isAddSupported(metadataDescriptor)) {
            throw new IllegalArgumentException("Descriptor cannot be added, see isAddSupported(...)");
        }
        synchronized (this.perfPoint) {
            arrayList = this.descriptors.get(this.perfPoint.setDescriptor(metadataDescriptor));
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.descriptors.put(new DescriptorPointer(metadataDescriptor), arrayList);
        } else if (!arrayList.isEmpty() && !this.containerType.isMultiValued()) {
            throw new IllegalArgumentException("Container does not allow multiple values of descriptors with same name, language index and stream number");
        }
        arrayList.add(metadataDescriptor);
    }

    public final MetadataDescriptor assertDescriptor(String str) {
        return assertDescriptor(str, 0);
    }

    public final boolean containsDescriptor(MetadataDescriptor metadataDescriptor) {
        return this.descriptors.containsKey(this.perfPoint.setDescriptor(metadataDescriptor));
    }

    public final ContainerType getContainerType() {
        return this.containerType;
    }

    public long getCurrentAsfChunkSize() {
        Iterator<MetadataDescriptor> it = getDescriptors().iterator();
        long currentAsfSize = 26;
        while (it.hasNext()) {
            currentAsfSize += (long) it.next().getCurrentAsfSize(this.containerType);
        }
        return currentAsfSize;
    }

    public final int getDescriptorCount() {
        return getDescriptors().size();
    }

    public final List<MetadataDescriptor> getDescriptors() {
        ArrayList arrayList = new ArrayList();
        Iterator<List<MetadataDescriptor>> it = this.descriptors.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next());
        }
        return arrayList;
    }

    public final List<MetadataDescriptor> getDescriptorsByName(String str) {
        ArrayList arrayList = new ArrayList();
        for (List<MetadataDescriptor> list : this.descriptors.values()) {
            if (!list.isEmpty() && list.get(0).getName().equals(str)) {
                arrayList.addAll(list);
            }
        }
        return arrayList;
    }

    public final String getValueFor(String str) {
        List<MetadataDescriptor> descriptorsByName = getDescriptorsByName(str);
        return (descriptorsByName == null || descriptorsByName.isEmpty()) ? "" : descriptorsByName.get(0).getString();
    }

    public final boolean hasDescriptor(String str) {
        return !getDescriptorsByName(str).isEmpty();
    }

    public boolean isAddSupported(MetadataDescriptor metadataDescriptor) {
        boolean zIsEmpty = getContainerType().checkConstraints(metadataDescriptor.getName(), metadataDescriptor.getRawData(), metadataDescriptor.getType(), metadataDescriptor.getStreamNumber(), metadataDescriptor.getLanguageIndex()) == null;
        if (zIsEmpty && !getContainerType().isMultiValued()) {
            synchronized (this.perfPoint) {
                try {
                    List<MetadataDescriptor> list = this.descriptors.get(this.perfPoint.setDescriptor(metadataDescriptor));
                    if (list != null) {
                        zIsEmpty = list.isEmpty();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zIsEmpty;
    }

    @Override
    public final boolean isEmpty() {
        boolean zIsEmpty = true;
        if (getDescriptorCount() != 0) {
            Iterator<MetadataDescriptor> it = getDescriptors().iterator();
            while (zIsEmpty && it.hasNext()) {
                zIsEmpty &= it.next().isEmpty();
            }
        }
        return zIsEmpty;
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        for (MetadataDescriptor metadataDescriptor : getDescriptors()) {
            sb.append(str);
            sb.append("  |-> ");
            sb.append(metadataDescriptor);
            sb.append(Utils.LINE_SEPARATOR);
        }
        return sb.toString();
    }

    public final void removeDescriptorsByName(String str) {
        Iterator<List<MetadataDescriptor>> it = this.descriptors.values().iterator();
        while (it.hasNext()) {
            List<MetadataDescriptor> next = it.next();
            if (!next.isEmpty() && next.get(0).getName().equals(str)) {
                it.remove();
            }
        }
    }

    public final void setStringValue(String str, String str2) {
        assertDescriptor(str).setStringValue(str2);
    }

    public long writeInto(OutputStream outputStream) throws IOException {
        long currentAsfChunkSize = getCurrentAsfChunkSize();
        List<MetadataDescriptor> descriptors = getDescriptors();
        outputStream.write(getGuid().getBytes());
        Utils.writeUINT64(currentAsfChunkSize, outputStream);
        Utils.writeUINT16(descriptors.size(), outputStream);
        Iterator<MetadataDescriptor> it = descriptors.iterator();
        while (it.hasNext()) {
            it.next().writeInto(outputStream, this.containerType);
        }
        return currentAsfChunkSize;
    }

    public MetadataContainer(ContainerType containerType, long j, BigInteger bigInteger) {
        super(containerType.getContainerGUID(), j, bigInteger);
        this.descriptors = new Hashtable();
        this.perfPoint = new DescriptorPointer(new MetadataDescriptor(""));
        this.containerType = containerType;
    }

    public final MetadataDescriptor assertDescriptor(String str, int i) {
        List<MetadataDescriptor> descriptorsByName = getDescriptorsByName(str);
        if (descriptorsByName != null && !descriptorsByName.isEmpty()) {
            return descriptorsByName.get(0);
        }
        MetadataDescriptor metadataDescriptor = new MetadataDescriptor(getContainerType(), str, i);
        addDescriptor(metadataDescriptor);
        return metadataDescriptor;
    }

    public MetadataContainer(GUID guid, long j, BigInteger bigInteger) {
        this(determineType(guid), j, bigInteger);
    }
}
