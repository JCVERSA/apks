.class public final synthetic Lvph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lwph;

.field public final synthetic b:Lmph;


# direct methods
.method public synthetic constructor <init>(Lwph;Lmph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvph;->a:Lwph;

    iput-object p2, p0, Lvph;->b:Lmph;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lvph;->a:Lwph;

    iget-object p0, p0, Lvph;->b:Lmph;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p0, p1}, Lwph;->a(Lwph;Lmph;Ljava/lang/Exception;)Lim5;

    move-result-object p0

    return-object p0
.end method
