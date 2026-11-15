.class public Leb3$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb3$a;-><init>(Leb3;Lvx9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Leb3;

.field public final synthetic c:Leb3$a;


# direct methods
.method public constructor <init>(Leb3$a;Leb3;)V
    .locals 0

    iput-object p1, p0, Leb3$a$c;->c:Leb3$a;

    iput-object p2, p0, Leb3$a$c;->b:Leb3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Leb3$a$c;->c:Leb3$a;

    invoke-static {p0}, Leb3$a;->k(Leb3$a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Leb3$a$c;->a()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
