.class public Lll1$c;
.super Lol1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lll1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final c:Lokhttp3/Call;

.field public final synthetic d:Lll1;


# direct methods
.method public constructor <init>(Lll1;Lokhttp3/ResponseBody;Lokhttp3/Call;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lll1$c;->d:Lll1;

    .line 3
    invoke-direct {p0, p2}, Lol1;-><init>(Lokhttp3/ResponseBody;)V

    .line 4
    iput-object p3, p0, Lll1$c;->c:Lokhttp3/Call;

    return-void
.end method

.method public synthetic constructor <init>(Lll1;Lokhttp3/ResponseBody;Lokhttp3/Call;Lll1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lll1$c;-><init>(Lll1;Lokhttp3/ResponseBody;Lokhttp3/Call;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lll1$c;->d:Lll1;

    invoke-static {v0}, Lll1;->b(Lll1;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lll1$c;->c:Lokhttp3/Call;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
