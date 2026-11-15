.class public final synthetic Lbla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lela;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lela;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbla;->b:Ljava/lang/String;

    iput-object p2, p0, Lbla;->c:Lela;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbla;->b:Ljava/lang/String;

    iget-object p0, p0, Lbla;->c:Lela;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lela;->g(Ljava/lang/String;Lela;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method
