.class public interface abstract Lkga;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkga$a;
    }
.end annotation


# static fields
.field public static final a:Lkga$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkga$a;->a:Lkga$a;

    sput-object v0, Lkga;->a:Lkga$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;
    .locals 1

    const-string v0, "templateId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p2, p1}, Lmx7;->s(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public abstract get(Ljava/lang/String;)Lza3;
.end method
