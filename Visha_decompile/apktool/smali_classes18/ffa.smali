.class public interface abstract Lffa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzfa;


# static fields
.field public static final W4:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "DATE"

    const-string v1, "DATETIME"

    const-string v2, "UNKNOWN"

    const-string v3, "TIME"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lffa;->W4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract f()Ljava/util/Date;
.end method

.method public abstract j()I
.end method
