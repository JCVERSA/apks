.class public Leu7;
.super Lfu7$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lfu7;


# direct methods
.method public constructor <init>(Lfu7;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Leu7;->e:Lfu7;

    invoke-direct {p0, p1, p2}, Lfu7$a;-><init>(Lfu7;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lhx0;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
