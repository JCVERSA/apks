.class final Lokio/ForwardingFileSystem$listRecursively$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/ForwardingFileSystem;->listRecursively(Lokio/Path;Z)Lpc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lokio/Path;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lokio/ForwardingFileSystem;


# direct methods
.method public constructor <init>(Lokio/ForwardingFileSystem;)V
    .locals 0

    iput-object p1, p0, Lokio/ForwardingFileSystem$listRecursively$1;->this$0:Lokio/ForwardingFileSystem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokio/Path;

    invoke-virtual {p0, p1}, Lokio/ForwardingFileSystem$listRecursively$1;->invoke(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lokio/Path;)Lokio/Path;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lokio/ForwardingFileSystem$listRecursively$1;->this$0:Lokio/ForwardingFileSystem;

    const-string v0, "listRecursively"

    invoke-virtual {p0, p1, v0}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method
