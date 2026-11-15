.class public abstract Lml0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lex7;

.field public static final b:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lml0$a;

    invoke-direct {v0}, Lml0$a;-><init>()V

    sput-object v0, Lml0;->a:Lex7;

    new-instance v0, Lcom/yandex/div2/JsonParserComponent;

    invoke-direct {v0}, Lcom/yandex/div2/JsonParserComponent;-><init>()V

    sput-object v0, Lml0;->b:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method

.method public static final a()Lcom/yandex/div2/JsonParserComponent;
    .locals 1

    sget-object v0, Lml0;->b:Lcom/yandex/div2/JsonParserComponent;

    return-object v0
.end method

.method public static final b()Lex7;
    .locals 1

    sget-object v0, Lml0;->a:Lex7;

    return-object v0
.end method
