.class public final Lomf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lung;


# instance fields
.field public final a:Lzlf;

.field public final b:Lrmf;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lzlf;Lrmf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lomf;->a:Lzlf;

    iput-object p2, p0, Lomf;->b:Lrmf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)Lung;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lomf;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final bridge synthetic zza(Ljava/lang/String;)Lung;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lomf;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Lvng;
    .locals 4

    iget-object v0, p0, Lomf;->c:Ljava/lang/Long;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lomf;->d:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lpmf;

    iget-object v1, p0, Lomf;->a:Lzlf;

    iget-object v2, p0, Lomf;->b:Lrmf;

    iget-object v3, p0, Lomf;->c:Ljava/lang/Long;

    iget-object p0, p0, Lomf;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lpmf;-><init>(Lzlf;Lrmf;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method
