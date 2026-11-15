.class public Lv9d;
.super Lc7d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc7d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lc7d;-><init>(Lc7d$b;)V

    return-void
.end method


# virtual methods
.method public varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc7d;->b:Lc7d$b;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lc7d$b;->a(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv9d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
