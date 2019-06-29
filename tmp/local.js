module.exports = {
  // デバッグ関連の処理を実行するかどうか
  debug: true,

  // ローカル環境かどうか
  local: true,

  // ドメイン
  siteDomain: "localhost:3031",

  // サイトURL
  webBaseUrl: "http://localhost:3031/",

  // 画像やJSの取得先。管理画面はCDN利用なしの予定
  cdnUrl: "/_nuxt/",

  // REBLITZ API連携用設定
  reblitz: {
    baseURL: "http://admin.ua.jp/api/1",
    clientIds: ["sys_admin", "shop_admin"]
  }
};
