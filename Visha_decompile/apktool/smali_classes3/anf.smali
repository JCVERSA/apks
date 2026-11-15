.class public final Lanf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajg;


# instance fields
.field public final a:Lzlf;

.field public b:Lakh;

.field public c:Lajh;

.field public d:Ld6g;

.field public e:Lryf;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ld6g;)Lajg;
    .locals 0

    iput-object p1, p0, Lanf;->d:Ld6g;

    return-object p0
.end method

.method public final bridge synthetic b(Lryf;)Lajg;
    .locals 0

    iput-object p1, p0, Lanf;->e:Lryf;

    return-object p0
.end method

.method public final synthetic i(Lajh;)Lnyf;
    .locals 0

    iput-object p1, p0, Lanf;->c:Lajh;

    return-object p0
.end method

.method public final synthetic m(Lakh;)Lnyf;
    .locals 0

    iput-object p1, p0, Lanf;->b:Lakh;

    return-object p0
.end method

.method public final zze()Lbjg;
    .locals 14

    iget-object v0, p0, Lanf;->d:Ld6g;

    const-class v1, Ld6g;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lanf;->e:Lryf;

    const-class v1, Lryf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/d4;

    new-instance v4, Livf;

    invoke-direct {v4}, Livf;-><init>()V

    new-instance v5, Lkoh;

    invoke-direct {v5}, Lkoh;-><init>()V

    new-instance v6, Lqxf;

    invoke-direct {v6}, Lqxf;-><init>()V

    new-instance v7, Lfng;

    invoke-direct {v7}, Lfng;-><init>()V

    iget-object v8, p0, Lanf;->d:Ld6g;

    iget-object v9, p0, Lanf;->e:Lryf;

    invoke-static {}, Ld1h;->a()Lb1h;

    move-result-object v10

    iget-object v12, p0, Lanf;->b:Lakh;

    iget-object v13, p0, Lanf;->c:Lajh;

    iget-object v3, p0, Lanf;->a:Lzlf;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/d4;-><init>(Lzlf;Livf;Lkoh;Lqxf;Lfng;Ld6g;Lryf;Lb1h;Lvmh;Lakh;Lajh;)V

    return-object v0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lanf;->zze()Lbjg;

    move-result-object p0

    return-object p0
.end method
