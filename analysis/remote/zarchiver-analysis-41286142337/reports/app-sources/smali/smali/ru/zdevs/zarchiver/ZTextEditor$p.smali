.class public final Lru/zdevs/zarchiver/ZTextEditor$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln0/e$a;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "op2n"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->a:Ljava/lang/String;

    const-string v0, "op2f"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Ln0/e$a;

    const-string v2, "op2b"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "op2r"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ln0/e$a;-><init>([BLjava/lang/String;Z)V

    iput-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Ln0/e$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Ln0/e$a;

    :goto_0
    const-string v0, "op2u"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    const-string v0, "op2t"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln0/e$a;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->b:Ln0/e$a;

    .line 4
    iput-object p3, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    .line 5
    iput-object p4, p0, Lru/zdevs/zarchiver/ZTextEditor$p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
