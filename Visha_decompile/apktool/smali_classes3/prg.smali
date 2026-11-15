.class public final synthetic Lprg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lsrg;


# direct methods
.method public synthetic constructor <init>(Lsrg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lprg;->a:Lsrg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lprg;->a:Lsrg;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lsrg;->b(Lsrg;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    return-object p0
.end method
