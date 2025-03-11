import Memory from './memory';
import App from './page_object';
import 'dotenv/config';

export default {
    paths: ['features/**/*.feature'],
    require: [
        'step_definition/*.ts',
        'node_modules/@qavajs/steps-playwright/index.js',
        'node_modules/@qavajs/steps-memory/index.js',
        'node_modules/@qavajs/steps-api/index.js'
    ],
    requireModule: [],
    format: [
        '@qavajs/console-formatter',
        ['@qavajs/html-formatter', 'report/report.html'],
        // '@qavajs/format-report-portal:report/rp.out'
    ],
    memory: new Memory(),
    formatOptions: {
        // rpConfig: {
        //     apiKey: process.env.RP_Key,
        //     endpoint: 'https://reportportal.epam.com/api/v1',
        //     description: 'Salesforce',
        //     tags: ['Salesforce'],
        //     project: 'alexander_bychinskiy_personal',
        //     launch: 'EcommLaunch',
        // },
        // xray: {
        //     client_id: process.env.XRAY_CLIENT_ID,
        //     client_secret: process.env.XRAY_CLIENT_SECRET,
        //     testExecutionKey: process.env.XRAY_EXECUTION
        // },
        console: {
            showLogs: false
        }},
    pageObject: new App(),
    browser: {
        capabilities: {
            browserName: 'chromium',
            headless: false
        }
    },
}