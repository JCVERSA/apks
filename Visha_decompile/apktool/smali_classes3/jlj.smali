.class public final synthetic Ljlj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lolj;


# instance fields
.field public final synthetic a:Lerj;


# direct methods
.method public synthetic constructor <init>(Lerj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljlj;->a:Lerj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ltkj;

    sget-object v0, Lqlj;->a:Ljava/util/HashMap;

    iget-object p0, p0, Ljlj;->a:Lerj;

    invoke-virtual {p1, p0}, Ltkj;->d(Lerj;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
