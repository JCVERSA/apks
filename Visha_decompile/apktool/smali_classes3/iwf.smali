.class public final Liwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5g;
.implements Lb1g;


# instance fields
.field public final b:Lfy0;

.field public final c:Lkwf;

.field public final d:Lenh;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfy0;Lkwf;Lenh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liwf;->b:Lfy0;

    iput-object p2, p0, Liwf;->c:Lkwf;

    iput-object p3, p0, Liwf;->d:Lenh;

    iput-object p4, p0, Liwf;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Liwf;->b:Lfy0;

    iget-object v1, p0, Liwf;->c:Lkwf;

    iget-object p0, p0, Liwf;->e:Ljava/lang/String;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lkwf;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzt()V
    .locals 4

    iget-object v0, p0, Liwf;->b:Lfy0;

    iget-object v1, p0, Liwf;->e:Ljava/lang/String;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Liwf;->d:Lenh;

    iget-object p0, p0, Liwf;->c:Lkwf;

    iget-object v0, v0, Lenh;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lkwf;->d(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
