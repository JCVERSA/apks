.class public final synthetic Lfyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lvrf;


# direct methods
.method public synthetic constructor <init>(Lvrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyg;->a:Lvrf;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfyg;->a:Lvrf;

    invoke-virtual {p0}, Lvrf;->h()Lsrf;

    move-result-object p0

    return-object p0
.end method
