.class public final Lcom/google/common/collect/c$b;
.super Lcom/google/common/collect/Maps$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c$b;->e:Lcom/google/common/collect/c;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$h;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/c;Lcom/google/common/collect/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c$b;-><init>(Lcom/google/common/collect/c;)V

    return-void
.end method


# virtual methods
.method public k()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c$b;->e:Lcom/google/common/collect/c;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/util/NavigableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/c$b;->e:Lcom/google/common/collect/c;

    return-object p0
.end method
