.class Lcom/transsion/transfer/androidasync/http/Headers$1;
.super Lcom/transsion/transfer/androidasync/http/Multimap;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/Headers;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/Headers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/Headers$1;->this$0:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/Multimap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/util/TaggedList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/TaggedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
