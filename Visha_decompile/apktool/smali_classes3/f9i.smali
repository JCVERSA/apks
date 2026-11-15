.class public final synthetic Lf9i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbhi;

.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lbhi;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf9i;->a:Lbhi;

    iput-object p2, p0, Lf9i;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lnhi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf9i;->a:Lbhi;

    invoke-interface {p1}, Lnhi;->zzb()Lb9i;

    move-result-object p1

    iget-object p0, p0, Lf9i;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, p0}, Lbhi;->b(Lb9i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
