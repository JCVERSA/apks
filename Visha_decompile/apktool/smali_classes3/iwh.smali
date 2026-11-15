.class public final Liwh;
.super Lgwh;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ldwh;)V
    .locals 0

    invoke-direct {p0, p1}, Lgwh;-><init>(Ldwh;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgwh;->b:Ldwh;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ldwh;->e(Lorg/json/JSONObject;)V

    return-object p1
.end method
