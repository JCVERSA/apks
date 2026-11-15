.class public final synthetic Lozg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lqzg;

.field public final synthetic b:Lvmh;

.field public final synthetic c:Lhmh;


# direct methods
.method public synthetic constructor <init>(Lqzg;Lvmh;Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lozg;->a:Lqzg;

    iput-object p2, p0, Lozg;->b:Lvmh;

    iput-object p3, p0, Lozg;->c:Lhmh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Lozg;->a:Lqzg;

    iget-object v1, p0, Lozg;->b:Lvmh;

    iget-object p0, p0, Lozg;->c:Lhmh;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v0, v1, p0, p1}, Lqzg;->d(Lqzg;Lvmh;Lhmh;Lorg/json/JSONArray;)Lim5;

    move-result-object p0

    return-object p0
.end method
