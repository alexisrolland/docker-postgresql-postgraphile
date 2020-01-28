const { makeWrapResolversPlugin } = require("graphile-utils");

// Create custom wrapper for resolver create record in parent_table
const createParentTableResolverWrapper = () => {
    return async (resolve, source, args, context, resolveInfo) => {
        // You can do something before the resolver executes
        console.info("Hello World!");
        console.info(args);

        // Let resolver execute against database
        const result = await resolve();

        // You can do something after the resolver executes
        console.info("Hello World!");
        console.info(result);

        return result;
    };
};

// Register custom resolvers
module.exports = makeWrapResolversPlugin({
    Mutation: {
        createParentTable: createParentTableResolverWrapper()
    }
});
