.class public final Lq8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Llkg;

.field public final c:Ljava/lang/String;

.field public final d:Lenh;


# direct methods
.method public constructor <init>(Lg8i;Llkg;Lenh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8h;->a:Lg8i;

    iput-object p2, p0, Lq8h;->b:Llkg;

    iput-object p3, p0, Lq8h;->d:Lenh;

    iput-object p4, p0, Lq8h;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lq8h;)Lr8h;
    .locals 2

    iget-object v0, p0, Lq8h;->d:Lenh;

    iget-object v1, p0, Lq8h;->b:Llkg;

    iget-object v0, v0, Lenh;->f:Ljava/lang/String;

    iget-object p0, p0, Lq8h;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Llkg;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1}, Llkg;->a()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lr8h;

    invoke-direct {v1, p0, v0}, Lr8h;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lp8h;

    invoke-direct {v0, p0}, Lp8h;-><init>(Lq8h;)V

    iget-object p0, p0, Lq8h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
