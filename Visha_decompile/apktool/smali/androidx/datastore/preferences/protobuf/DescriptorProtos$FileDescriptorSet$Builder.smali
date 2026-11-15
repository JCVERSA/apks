.class public final Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$000()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$400(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFile(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 9
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 10
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public clearFile()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;)V

    return-object p0
.end method

.method public getFile(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->getFile(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public getFileCount()I
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result p0

    return p0
.end method

.method public getFileList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeFile(I)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;I)V

    return-object p0
.end method

.method public setFile(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 6
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public setFile(ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorSet;ILandroidx/datastore/preferences/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method
