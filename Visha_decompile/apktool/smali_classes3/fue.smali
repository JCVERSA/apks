.class public final Lfue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput-object p2, p0, Lfue;->d:Ljava/lang/String;

    iput-object p4, p0, Lfue;->b:Lorg/json/JSONObject;

    iput-object p1, p0, Lfue;->c:Ljava/lang/String;

    iput-object p3, p0, Lfue;->a:Ljava/lang/String;

    iput-boolean p6, p0, Lfue;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfue;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfue;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfue;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lfue;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lfue;->e:Z

    return p0
.end method
