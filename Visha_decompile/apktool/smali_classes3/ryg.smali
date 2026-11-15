.class public final synthetic Lryg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Ltyg;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lvmh;

.field public final synthetic d:Lhmh;

.field public final synthetic e:Lkmh;


# direct methods
.method public synthetic constructor <init>(Ltyg;Landroid/net/Uri;Lvmh;Lhmh;Lkmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lryg;->a:Ltyg;

    iput-object p2, p0, Lryg;->b:Landroid/net/Uri;

    iput-object p3, p0, Lryg;->c:Lvmh;

    iput-object p4, p0, Lryg;->d:Lhmh;

    iput-object p5, p0, Lryg;->e:Lkmh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 6

    iget-object v0, p0, Lryg;->a:Ltyg;

    iget-object v1, p0, Lryg;->b:Landroid/net/Uri;

    iget-object v2, p0, Lryg;->c:Lvmh;

    iget-object v3, p0, Lryg;->d:Lhmh;

    iget-object v4, p0, Lryg;->e:Lkmh;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ltyg;->d(Ltyg;Landroid/net/Uri;Lvmh;Lhmh;Lkmh;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
