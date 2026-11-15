.class public Lha5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbs1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lha5;->i()Lbs1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lha5;


# direct methods
.method public constructor <init>(Lha5;)V
    .locals 0

    iput-object p1, p0, Lha5$a;->a:Lha5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7

    new-instance v6, Lqc5;

    iget-object v0, p0, Lha5$a;->a:Lha5;

    invoke-static {v0}, Lha5;->e(Lha5;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lha5$a;->a:Lha5;

    invoke-static {v0}, Lha5;->f(Lha5;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lha5$a;->a:Lha5;

    invoke-static {v0}, Lha5;->g(Lha5;)Lyb7;

    move-result-object v4

    iget-object p0, p0, Lha5$a;->a:Lha5;

    invoke-static {p0}, Lha5;->h(Lha5;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lqc5;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lyb7;Z)V

    const/4 p0, 0x0

    invoke-virtual {v6, p1, p0}, Lqc5;->h(Ljava/lang/Object;Z)Lqc5;

    invoke-virtual {v6}, Lqc5;->p()V

    return-void
.end method
