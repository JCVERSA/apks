.class public final Lmuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lv7i;

.field public final synthetic b:Louf;


# direct methods
.method public constructor <init>(Louf;Lv7i;)V
    .locals 0

    iput-object p2, p0, Lmuf;->a:Lv7i;

    iput-object p1, p0, Lmuf;->b:Louf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lmuf;->a:Lv7i;

    invoke-interface {v0, p1}, Lv7i;->zza(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lmuf;->b:Louf;

    invoke-static {p0}, Louf;->d(Louf;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljuf;

    iget-object p1, p1, Ljuf;->a:Ljava/util/List;

    iget-object v0, p0, Lmuf;->a:Lv7i;

    iget-object p0, p0, Lmuf;->b:Louf;

    invoke-static {p0, p1, v0}, Louf;->c(Louf;Ljava/util/List;Lv7i;)V

    return-void
.end method
