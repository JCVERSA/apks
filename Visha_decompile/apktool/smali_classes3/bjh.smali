.class public final synthetic Lbjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lfjh;

.field public final synthetic b:Loyf;


# direct methods
.method public synthetic constructor <init>(Lfjh;Loyf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbjh;->a:Lfjh;

    iput-object p2, p0, Lbjh;->b:Loyf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lbjh;->a:Lfjh;

    iget-object p0, p0, Lbjh;->b:Loyf;

    check-cast p1, Lqjh;

    invoke-static {v0, p0, p1}, Lfjh;->b(Lfjh;Loyf;Lqjh;)Lim5;

    move-result-object p0

    return-object p0
.end method
