package com.transsion.audiotagger.audio.mp4;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.NullBoxIdException;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.audio.mp4.atom.Mp4MetaBox;
import com.transsion.audiotagger.audio.mp4.atom.Mp4StcoBox;
import com.transsion.audiotagger.audio.mp4.atom.NullPadding;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.utils.tree.DefaultMutableTreeNode;
import com.transsion.audiotagger.utils.tree.DefaultTreeModel;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.logging.Logger;

public class Mp4AtomTree {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.mp4");
    private DefaultTreeModel dataTree;
    private DefaultMutableTreeNode hdlrWithinMdiaNode;
    private DefaultMutableTreeNode hdlrWithinMetaNode;
    private DefaultMutableTreeNode ilstNode;
    private DefaultMutableTreeNode mdatNode;
    private DefaultMutableTreeNode metaNode;
    private ByteBuffer moovBuffer;
    private Mp4BoxHeader moovHeader;
    private DefaultMutableTreeNode moovNode;
    private DefaultMutableTreeNode rootNode;
    private DefaultMutableTreeNode tagsNode;
    private DefaultMutableTreeNode udtaNode;
    private List<DefaultMutableTreeNode> stcoNodes = new ArrayList();
    private List<DefaultMutableTreeNode> freeNodes = new ArrayList();
    private List<DefaultMutableTreeNode> mdatNodes = new ArrayList();
    private List<DefaultMutableTreeNode> trakNodes = new ArrayList();
    private List<Mp4StcoBox> stcos = new ArrayList();

    public Mp4AtomTree(RandomAccessFile randomAccessFile) throws Throwable {
        buildTree(randomAccessFile, true);
    }

    public void buildChildrenOfNode(ByteBuffer byteBuffer, DefaultMutableTreeNode defaultMutableTreeNode) throws CannotReadException, IOException {
        Mp4BoxHeader mp4BoxHeader;
        Mp4BoxHeader mp4BoxHeader2 = (Mp4BoxHeader) defaultMutableTreeNode.getUserObject();
        int iPosition = byteBuffer.position();
        if (mp4BoxHeader2.getId().equals(Mp4AtomIdentifier.META.getFieldName())) {
            new Mp4MetaBox(mp4BoxHeader2, byteBuffer).processData();
            try {
                try {
                    new Mp4BoxHeader(byteBuffer);
                } catch (NullBoxIdException unused) {
                    byteBuffer.position(byteBuffer.position() - 4);
                }
                byteBuffer.position(byteBuffer.position() - 8);
            } catch (Throwable th) {
                byteBuffer.position(byteBuffer.position() - 8);
                throw th;
            }
        }
        int iPosition2 = byteBuffer.position();
        while (byteBuffer.position() < (mp4BoxHeader2.getDataLength() + iPosition2) - 8) {
            Mp4BoxHeader mp4BoxHeader3 = new Mp4BoxHeader(byteBuffer);
            mp4BoxHeader3.setFilePos(this.moovHeader.getFilePos() + ((long) byteBuffer.position()));
            logger.finest("Atom " + mp4BoxHeader3.getId() + " @ " + mp4BoxHeader3.getFilePos() + " of size:" + mp4BoxHeader3.getLength() + " ,ends @ " + (mp4BoxHeader3.getFilePos() + ((long) mp4BoxHeader3.getLength())));
            DefaultMutableTreeNode defaultMutableTreeNode2 = new DefaultMutableTreeNode(mp4BoxHeader3);
            defaultMutableTreeNode.add(defaultMutableTreeNode2);
            String id = mp4BoxHeader3.getId();
            Mp4AtomIdentifier mp4AtomIdentifier = Mp4AtomIdentifier.UDTA;
            if (id.equals(mp4AtomIdentifier.getFieldName())) {
                this.udtaNode = defaultMutableTreeNode2;
            } else {
                String id2 = mp4BoxHeader3.getId();
                Mp4AtomIdentifier mp4AtomIdentifier2 = Mp4AtomIdentifier.META;
                if (id2.equals(mp4AtomIdentifier2.getFieldName()) && mp4BoxHeader2.getId().equals(mp4AtomIdentifier.getFieldName())) {
                    this.metaNode = defaultMutableTreeNode2;
                } else {
                    String id3 = mp4BoxHeader3.getId();
                    Mp4AtomIdentifier mp4AtomIdentifier3 = Mp4AtomIdentifier.HDLR;
                    if (id3.equals(mp4AtomIdentifier3.getFieldName()) && mp4BoxHeader2.getId().equals(mp4AtomIdentifier2.getFieldName())) {
                        this.hdlrWithinMetaNode = defaultMutableTreeNode2;
                    } else if (mp4BoxHeader3.getId().equals(mp4AtomIdentifier3.getFieldName())) {
                        this.hdlrWithinMdiaNode = defaultMutableTreeNode2;
                    } else if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.TAGS.getFieldName())) {
                        this.tagsNode = defaultMutableTreeNode2;
                    } else if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.STCO.getFieldName())) {
                        this.stcos.add(new Mp4StcoBox(mp4BoxHeader3, byteBuffer));
                        this.stcoNodes.add(defaultMutableTreeNode2);
                    } else if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.ILST.getFieldName())) {
                        DefaultMutableTreeNode defaultMutableTreeNode3 = (DefaultMutableTreeNode) defaultMutableTreeNode.getParent();
                        if (defaultMutableTreeNode3 != null && (mp4BoxHeader = (Mp4BoxHeader) defaultMutableTreeNode3.getUserObject()) != null && mp4BoxHeader2.getId().equals(mp4AtomIdentifier2.getFieldName()) && mp4BoxHeader.getId().equals(mp4AtomIdentifier.getFieldName())) {
                            this.ilstNode = defaultMutableTreeNode2;
                        }
                    } else if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.FREE.getFieldName())) {
                        this.freeNodes.add(defaultMutableTreeNode2);
                    } else if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.TRAK.getFieldName())) {
                        this.trakNodes.add(defaultMutableTreeNode2);
                    }
                }
            }
            if (mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.TRAK.getFieldName()) || mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.MDIA.getFieldName()) || mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.MINF.getFieldName()) || mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.STBL.getFieldName()) || mp4BoxHeader3.getId().equals(mp4AtomIdentifier.getFieldName()) || mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.META.getFieldName()) || mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.ILST.getFieldName())) {
                buildChildrenOfNode(byteBuffer, defaultMutableTreeNode2);
            }
            byteBuffer.position(byteBuffer.position() + mp4BoxHeader3.getDataLength());
        }
        byteBuffer.position(iPosition);
    }

    public DefaultTreeModel buildTree(RandomAccessFile randomAccessFile, boolean z) throws Throwable {
        FileChannel channel;
        try {
            channel = randomAccessFile.getChannel();
            try {
                channel.position(0L);
                DefaultMutableTreeNode defaultMutableTreeNode = new DefaultMutableTreeNode();
                this.rootNode = defaultMutableTreeNode;
                this.dataTree = new DefaultTreeModel(defaultMutableTreeNode);
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                while (channel.position() < channel.size()) {
                    Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader();
                    byteBufferAllocate.clear();
                    channel.read(byteBufferAllocate);
                    byteBufferAllocate.rewind();
                    try {
                        mp4BoxHeader.update(byteBufferAllocate);
                        mp4BoxHeader.setFilePos(channel.position() - 8);
                        DefaultMutableTreeNode defaultMutableTreeNode2 = new DefaultMutableTreeNode(mp4BoxHeader);
                        if (mp4BoxHeader.getId().equals(Mp4AtomIdentifier.MOOV.getFieldName())) {
                            if ((this.mdatNode != null) && (this.moovNode != null)) {
                                logger.warning(ErrorMessage.ADDITIONAL_MOOV_ATOM_AT_END_OF_MP4.getMsg(Long.valueOf(channel.position() - 8)));
                                break;
                            }
                            this.moovNode = defaultMutableTreeNode2;
                            this.moovHeader = mp4BoxHeader;
                            long jPosition = channel.position();
                            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(mp4BoxHeader.getDataLength());
                            this.moovBuffer = byteBufferAllocate2;
                            int i = channel.read(byteBufferAllocate2);
                            if (i < mp4BoxHeader.getDataLength()) {
                                throw new CannotReadException(ErrorMessage.ATOM_LENGTH_LARGER_THAN_DATA.getMsg(mp4BoxHeader.getId(), Integer.valueOf(mp4BoxHeader.getDataLength()), Integer.valueOf(i)));
                            }
                            this.moovBuffer.rewind();
                            buildChildrenOfNode(this.moovBuffer, defaultMutableTreeNode2);
                            channel.position(jPosition);
                        } else if (mp4BoxHeader.getId().equals(Mp4AtomIdentifier.FREE.getFieldName())) {
                            this.freeNodes.add(defaultMutableTreeNode2);
                        } else if (mp4BoxHeader.getId().equals(Mp4AtomIdentifier.MDAT.getFieldName())) {
                            this.mdatNode = defaultMutableTreeNode2;
                            this.mdatNodes.add(defaultMutableTreeNode2);
                        }
                        this.rootNode.add(defaultMutableTreeNode2);
                        channel.position(channel.position() + ((long) mp4BoxHeader.getDataLength()));
                    } catch (NullBoxIdException e) {
                        if (!(this.moovNode != null) || !(this.mdatNode != null)) {
                            throw e;
                        }
                        NullPadding nullPadding = new NullPadding(channel.position() - 8, channel.size());
                        this.rootNode.add(new DefaultMutableTreeNode(nullPadding));
                        logger.warning(ErrorMessage.NULL_PADDING_FOUND_AT_END_OF_MP4.getMsg(Long.valueOf(nullPadding.getFilePos())));
                    }
                }
                DefaultTreeModel defaultTreeModel = this.dataTree;
                if (this.mdatNode == null) {
                    throw new CannotReadException(ErrorMessage.MP4_CANNOT_FIND_AUDIO.getMsg());
                }
                if (z) {
                    channel.close();
                }
                return defaultTreeModel;
            } catch (Throwable th) {
                th = th;
                if (this.mdatNode == null) {
                    throw new CannotReadException(ErrorMessage.MP4_CANNOT_FIND_AUDIO.getMsg());
                }
                if (z) {
                    channel.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            channel = null;
        }
    }

    public Mp4BoxHeader getBoxHeader(DefaultMutableTreeNode defaultMutableTreeNode) {
        if (defaultMutableTreeNode == null) {
            return null;
        }
        return (Mp4BoxHeader) defaultMutableTreeNode.getUserObject();
    }

    public DefaultTreeModel getDataTree() {
        return this.dataTree;
    }

    public List<DefaultMutableTreeNode> getFreeNodes() {
        return this.freeNodes;
    }

    public DefaultMutableTreeNode getHdlrWithinMdiaNode() {
        return this.hdlrWithinMdiaNode;
    }

    public DefaultMutableTreeNode getHdlrWithinMetaNode() {
        return this.hdlrWithinMetaNode;
    }

    public DefaultMutableTreeNode getIlstNode() {
        return this.ilstNode;
    }

    public DefaultMutableTreeNode getMdatNode() {
        return this.mdatNode;
    }

    public DefaultMutableTreeNode getMetaNode() {
        return this.metaNode;
    }

    public ByteBuffer getMoovBuffer() {
        return this.moovBuffer;
    }

    public Mp4BoxHeader getMoovHeader() {
        return this.moovHeader;
    }

    public DefaultMutableTreeNode getMoovNode() {
        return this.moovNode;
    }

    public List<DefaultMutableTreeNode> getStcoNodes() {
        return this.stcoNodes;
    }

    public List<Mp4StcoBox> getStcos() {
        return this.stcos;
    }

    public DefaultMutableTreeNode getTagsNode() {
        return this.tagsNode;
    }

    public List<DefaultMutableTreeNode> getTrakNodes() {
        return this.trakNodes;
    }

    public DefaultMutableTreeNode getUdtaNode() {
        return this.udtaNode;
    }

    public void printAtomTree() {
        Enumeration enumerationPreorderEnumeration = this.rootNode.preorderEnumeration();
        while (enumerationPreorderEnumeration.hasMoreElements()) {
            DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) enumerationPreorderEnumeration.nextElement();
            Mp4BoxHeader mp4BoxHeader = (Mp4BoxHeader) defaultMutableTreeNode.getUserObject();
            if (mp4BoxHeader != null) {
                String str = "";
                for (int i = 1; i < defaultMutableTreeNode.getLevel(); i++) {
                    str = str + "\t";
                }
                if (mp4BoxHeader instanceof NullPadding) {
                    System.out.println(str + "Null pad  @ " + mp4BoxHeader.getFilePos() + " of size:" + mp4BoxHeader.getLength() + " ,ends @ " + (mp4BoxHeader.getFilePos() + ((long) mp4BoxHeader.getLength())));
                } else {
                    System.out.println(str + "Atom " + mp4BoxHeader.getId() + " @ " + mp4BoxHeader.getFilePos() + " of size:" + mp4BoxHeader.getLength() + " ,ends @ " + (mp4BoxHeader.getFilePos() + ((long) mp4BoxHeader.getLength())));
                }
            }
        }
    }

    public Mp4AtomTree(RandomAccessFile randomAccessFile, boolean z) throws Throwable {
        buildTree(randomAccessFile, z);
    }
}
