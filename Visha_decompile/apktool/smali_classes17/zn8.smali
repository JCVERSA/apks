.class public interface abstract Lzn8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzn8$a;,
        Lzn8$b;
    }
.end annotation


# static fields
.field public static final V4:Lzn8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lzn8$a;->a:Lzn8$a;

    sput-object v0, Lzn8;->V4:Lzn8$a;

    return-void
.end method


# virtual methods
.method public abstract getData()Lorg/json/JSONObject;
.end method

.method public abstract getId()Ljava/lang/String;
.end method
