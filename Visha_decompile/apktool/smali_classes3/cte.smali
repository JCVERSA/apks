.class public final Lcte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Lzre;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILzre;)V
    .locals 7

    const-string v3, "5el+rCV4lcaWS1gvt3lCAaH+20tOJyIAJrK3BNimLVE="

    const/16 v6, 0x5e

    const-string v2, "BC7L/NCOnXWRm7JYe+JuyF6kvlir6BpsAS0Yfubd/KoT9Dq97JPNt3OElb9RFD/3"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    iput-object p7, p0, Lcte;->i:Lzre;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcte;->i:Lzre;

    invoke-virtual {v1}, Lzre;->a()Ljava/util/List;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    invoke-static {v0}, Lape;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Looe;->Y(I)Looe;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
