.class public final synthetic Lij3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/a$a;


# instance fields
.field public final synthetic a:Lorg/chromium/net/ConnectionMigrationOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/ConnectionMigrationOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij3;->a:Lorg/chromium/net/ConnectionMigrationOptions;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Lij3;->a:Lorg/chromium/net/ConnectionMigrationOptions;

    invoke-static {p0, p1}, Lorg/chromium/net/a;->a(Lorg/chromium/net/ConnectionMigrationOptions;Lorg/json/JSONObject;)V

    return-void
.end method
