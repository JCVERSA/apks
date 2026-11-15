.class public final synthetic Lyfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final synthetic a:Lzfh;


# direct methods
.method public synthetic constructor <init>(Lzfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyfh;->a:Lzfh;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lyfh;->a:Lzfh;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lzfh;->a(Lzfh;Lorg/json/JSONObject;)V

    return-void
.end method
