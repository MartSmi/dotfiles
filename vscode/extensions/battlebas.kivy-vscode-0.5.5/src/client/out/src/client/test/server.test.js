'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const server_1 = require("../../server/src/server");
const chai_1 = require("chai");
require("mocha");
describe('Check for Kivy header', () => {
    it('diagnostic should contain a message', () => {
        let diagnostics = [];
        let firstLine = "";
        server_1.checkForKivyHeader(firstLine, diagnostics, true);
        chai_1.expect(diagnostics[0].message).to.equal('Kivy files require #:kivy !');
    });
});
//# sourceMappingURL=server.test.js.map