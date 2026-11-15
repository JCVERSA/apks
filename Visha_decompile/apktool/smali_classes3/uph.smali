.class public final synthetic Luph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lwph;

.field public final synthetic b:Lmph;

.field public final synthetic c:Lvoh;

.field public final synthetic d:Lnph;


# direct methods
.method public synthetic constructor <init>(Lwph;Lmph;Lvoh;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luph;->a:Lwph;

    iput-object p2, p0, Luph;->b:Lmph;

    iput-object p3, p0, Luph;->c:Lvoh;

    iput-object p4, p0, Luph;->d:Lnph;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 3

    iget-object v0, p0, Luph;->a:Lwph;

    iget-object v1, p0, Luph;->b:Lmph;

    iget-object v2, p0, Luph;->c:Lvoh;

    iget-object p0, p0, Luph;->d:Lnph;

    check-cast p1, Lbph;

    invoke-static {v0, v1, v2, p0, p1}, Lwph;->b(Lwph;Lmph;Lvoh;Lnph;Lbph;)Lim5;

    move-result-object p0

    return-object p0
.end method
