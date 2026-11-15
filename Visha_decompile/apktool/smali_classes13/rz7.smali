.class public Lrz7;
.super Lyz7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lyz7;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    iget-object p1, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string p2, "embedUrl"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lyz7;->a:Lcom/grack/nanojson/JsonObject;

    const-string v0, "embedPath"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyz7;->B(Ljava/lang/String;)V

    return-void
.end method
